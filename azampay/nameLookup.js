import https from 'https';
import ChecksumCalculator from '../azampay/checksumCalculation.js'; 
import TokenFetcher from '../azampay/TokenFetcher.js'; // Import the TokenFetcher class

(async () => {
  try {
    const token = await TokenFetcher.fetchToken();
    const publicKeyPath = '../azampay/public_key.pem'; // Replace with your actual public key file path
    const calculator = new ChecksumCalculator(publicKeyPath);
    const inputString = 'bangapp Tz';
    const base64Checksum = calculator.calculateChecksum(inputString);

    console.log('Encrypted Checksum:', base64Checksum);

    const options = {
      hostname: 'api-disbursement-test.azampay.co.tz',
      path: '/api/v1/azampay/namelookup',
      method: 'POST',
      headers: {
        'Authorization': 'Bearer ' + token,
        'Content-Type': 'application/json'
      }
    };

    const req = https.request(options, (res) => {
      console.log(`statusCode: ${res.statusCode}`);

      res.on('data', (d) => {
        process.stdout.write(d);
      });
    });

    req.on('error', (error) => {
      console.error(error);
    });

    const data = JSON.stringify({
      bankName: 'tigo',
      accountNumber: '0710426568',
      checksum: base64Checksum
    });

    req.write(data);
    req.end();
  } catch (error) {
    console.error('Error:', error);
  }
})();
