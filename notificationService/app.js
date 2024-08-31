const express = require('express');
const admin = require('firebase-admin');

// Initialize Firebase Admin SDK
const serviceAccount = require('./firebaseServiceAccountKey.json');

admin.initializeApp({
  credential: admin.credential.cert(serviceAccount),
    databaseURL: "https://bangapp-8adf3-default-rtdb.firebaseio.com"
});

const app = express();
app.use(express.json());

// Send notification function
app.post('/send-notification', async (req, res) => {
  const { token, title, body, notificationId, type, userName, userId } = req.body;

  const message = {
    notification: {
      title: title,
      body: body,
    },
    data: {
      notification_id: notificationId,
      type: type,
      user_name: userName || '',
      user_id: userId || '',
    },
    token: token,
  };

  try {
    const response = await admin.messaging().send(message);
    console.log('Successfully sent message:', response);
    res.status(200).send('Notification sent successfully');
  } catch (error) {
    console.error('Error sending message:', error);
    res.status(500).send('Failed to send notification');
  }
});

// Start the server
const PORT = process.env.PORT || 3005;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});

