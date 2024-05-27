import https from 'https';
import ChecksumCalculator from '../azampay/checksumCalculation.js'; 
import TokenFetcher from '../azampay/TokenFetcher.js'; // Import the TokenFetcher class

(async () => {
  try {

  const currentTimestamp = Date.now();


  const currentEpochTimeInSeconds = Math.floor(currentTimestamp / 1000);
    const token = await TokenFetcher.fetchToken();
    const publicKeyPath = '../azampay/public_key.pem'; // Replace with your actual public key file path
    const calculator = new ChecksumCalculator(publicKeyPath);

    const inputString = "Azampesa" + "1710446004";

  // const inputString = "Azampesa"+"1710446004"+"TZS"+"1000"+currentEpochTimeInSeconds+currentTimestamp;

    const base64Checksum = calculator.calculateChecksum(inputString);



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
      

      res.on('data', (d) => {
        process.stdout.write(d);
      });
    });

    req.on('error', (error) => {
      console.error(error);
    });

    const data = JSON.stringify({
      bankName: "Azampesa",
      accountNumber: "1710446004",
      checksum: base64Checksum
    });

    req.write(data);
    console.log(req)
    req.end();
  } catch (error) {
    console.error('Error:', error);
  }
})();
