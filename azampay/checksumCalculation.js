import https from 'https';
import crypto from 'crypto';
import fs from 'fs';

class ChecksumCalculator {
  constructor(publicKeyPath) {
    this.publicKey = fs.readFileSync(publicKeyPath, 'utf8');
  }

  calculateChecksum(inputString) {
    // Step 1: Calculate SHA-512 hash
    const sha512Hash = crypto.createHash('sha512').update(inputString).digest();

    // Step 2: Encrypt with RSA using PKCS1 padding
    const encryptedData = crypto.publicEncrypt({
      key: this.publicKey,
      padding: crypto.constants.RSA_PKCS1_PADDING,
    }, sha512Hash);

    // Step 3: Encode the encrypted result in Base64
    return encryptedData.toString('base64');
  }
}

export default ChecksumCalculator;
