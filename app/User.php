<?php

namespace App;

use Carbon\Carbon;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;
use Tymon\JWTAuth\Contracts\JWTSubject;

class User extends Authenticatable implements JWTSubject
{
    // ...

    public function getJWTIdentifier()
    {
        return $this->getKey();
    }

    public function getJWTCustomClaims()
    {
        return [];
    }

    use Notifiable, HasApiTokens;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password','phone_number','date_of_birth','bio','image','device_token','public','price','subscribe','subscriptionPrice','country_code'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    protected $appends = ['followerCount', 'followingCount', 'followingMe', 'followed','user_image_url','postCount','friendsCount','lastSeen'];

    public function posts()
    {
        return $this->hasMany(Post::class);
    }

    public function bangUpdates()
    {
        return $this->hasMany(BangUpdate::class);
    }

    public function comments()
    {
        return $this->hasMany(Comment::class);
    }

    public function battleComments()
    {
        return $this->hasMany(BattleComment::class);
    }

    public function battleLikes()
    {
        return $this->hasMany(BattleLike::class);
    }

    public function azamPay()
    {
        return $this->hasMany(azampay::class);
    }

    public function likes()
    {
        return $this->hasMany(Like::class);
    }

    public function postViews()
    {
        return $this->hasMany(PostView::class);
    }

    public function bangUpdateViews()
    {
        return $this->hasMany(BangUpdateView::class);
    }

    public function bangUpdateComments()
    {
        return $this->hasMany(bangUpdateComment::class);
    }

    public function bangUpdateLikes()
    {
        return $this->hasMany(BangUpdateLike::class, 'user_id');
    }

    public function followers()
    {
        return $this->belongsToMany(User::class, 'followers', 'following_id', 'follower_id');
    }

    public function following()
    {
        return $this->belongsToMany(User::class, 'followers', 'follower_id', 'following_id');
    }

    public function friends()
    {
        return $this->belongsToMany(User::class, 'friends', 'user_id', 'friend_id');
    }

    public function getFriendsCountAttribute()
    {
        $user_id = $this->id;
        return friends::where(function($query) use ($user_id) {
                    $query->where('user_id', $user_id)
                        ->orWhere('friend_id', $user_id);
                })->count();
    }

    public function getLastSeenAttribute($value)
    {
        return (new Carbon($value))->diffForHumans();
    }
    
    public function follow(User $user)
    {
        if ($this->following()->where('following_id', $user->id)->count() > 0) {
            return false;
        }
        $this->following()->attach($user->id);
        return true;
    }

    public function unFollow(User $user)
    {
        $this->following()->detach($user->id);
        return false;
    }

    public function getFollowerCountAttribute()
    {
        return $this->followers()->count();
    }

    public function getPostCountAttribute()
    {
        return $this->posts()->count();
    }

    public function getFollowingCountAttribute()
    {
        return $this->following()->count();
    }

    public function getFollowingMeAttribute()
    {
        return $this->following()->where('following_id', auth()->id())->count() > 0;
    }

    public function getFollowedAttribute()
    {
        return $this->followers()->where('follower_id', auth()->id())->count() > 0;
    }

    public function getCreatedAtAttribute($value) {
        return (new Carbon($value))->diffForHumans();
    }

    public function likedPosts(){
        return $this->belongsToMany(Post::class, 'likes', 'user_id', 'post_id');
    }

   public function hobbies()
    {
        return $this->belongsToMany(Hobby::class, 'user_hobby');
    }

    public function subscriptions()
    {
        return $this->hasMany(Subscription::class, 'user_id');
    }

    public function hasActiveSubscription($viewerId)
    {
        return $this->subscriptions()
                    ->where('subscriber_id', $viewerId)
                    ->whereDate('created_at', '>=', now()->subDays(30))
                    ->exists();
    }

    public function subscriptionDaysRemaining($viewerId)
    {
        $subscription = $this->subscriptions()
                            ->where('subscriber_id', $viewerId)
                            ->whereDate('created_at', '>=', now()->subDays(30))
                            ->latest()
                            ->first();

        if ($subscription) {
            $startDate = $subscription->created_at;
            $endDate = $startDate->addDays(30);
            $remainingDays = now()->diffInDays($endDate);
            return $remainingDays;
        }

        return 0; 
    }

    public static function hasUserPaid($userId, $viewerId)
    {
        return azampay::where('user_id', $viewerId)
            ->where('post_id', $userId)
            ->where('type', 'message')
            ->exists();
    }

    public function role()
    {
        return $this->belongsTo(Role::class);
    }

    public function getUserImageUrlAttribute()
    {
        $appUrl = "https://bangapp.pro/BangAppBackend/";

        if($this->image==null){
            return "https://bangapp.pro/BangAppBackend/storage/app/bang_logo.jpg";
        }
        // Check if the image URL starts with "https"
        else if (strpos($this->image, 'https') === 0) {
            return $this->image; // Return the image URL as it is
        }
         else {
            // If not, append the appUrl to the image URL
            return $appUrl . 'storage/app/' . $this->image;
        }
    }

    // Define the relationship to the files
    public function files()
    {
        return $this->hasMany(FilePost::class, 'user_id');
    }

    // Accessor to check if the user has uploaded any files
    public function getIsHavingFilesAttribute()
    {
        return $this->files()->exists();
    }



}
