
import crypto from 'crypto';
import fs from 'fs';


// Load the RSA public key in PEM format
const publicKey = fs.readFileSync('../azampay/public_key.pem', 'utf8'); // Replace with your actual public key file

// Input string
const inputString = 'YourInputStringHere';

// Step 1: Calculate SHA-512 hash
const sha512Hash = crypto.createHash('sha512').update(inputString).digest();

// Step 2: Encrypt with RSA using PKCS1 padding
const encryptedData = crypto.publicEncrypt({
key: publicKey,
padding: crypto.constants.RSA_PKCS1_PADDING,
}, sha512Hash);

// Step 3: Encode the encrypted result in Base64
const base64Checksum = encryptedData.toString('base64');

console.log('Encrypted Checksum:', base64Checksum);