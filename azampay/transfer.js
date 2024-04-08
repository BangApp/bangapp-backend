import request from 'request';
import ChecksumCalculator from '../azampay/checksumCalculation.js'; 
import TokenFetcher from '../azampay/TokenFetcher.js'; // Import the TokenFetcher class


const currentTimestamp = Date.now();
const currentEpochTimeInSeconds = Math.floor(currentTimestamp / 1000);

console.log(currentEpochTimeInSeconds);
  const publicKeyPath = '../azampay/public_key.pem'; // Replace with your actual public key file path
  const calculator = new ChecksumCalculator(publicKeyPath);
  const inputString = "1672245629"+"1710446004"+"TZS"+"1000"+currentEpochTimeInSeconds+"{{ext}}";
  const base64Checksum = calculator.calculateChecksum(inputString);
  const token = await TokenFetcher.fetchToken();
  const options = {
  url: 'https://api-disbursement-sandbox.azampay.co.tz/api/v1/azampay/createtransfer',
  method: 'POST',
  headers: {
    'Authorization': 'Bearer ' + token,
    'Content-Type': 'application/json'
  },
  body: JSON.stringify({
    "source": {
      "countryCode": "TZ",
      "fullName": "Sarafu",
      "bankName": "azampesa",
      "accountNumber": "1672245629",
      "currency": "TZS"
    },
    "destination": {
      "countryCode": "TZ",
      "fullName": "QA Resource3",
      "bankName": "azampesa",
      "accountNumber": "1710446004",
      "currency": "TZS"
    },
    "transferDetails": {
      "type": "Fund",
      "amount": 1000,
      "dateInEpoch": 0
    },
    "externalReferenceId": "{{ext}}",
    "remarks": "string",
    "additionalProperties": {
      "additionalProp1": "string",
      "additionalProp2": "string",
      "additionalProp3": "string"
    },
    "checksum": base64Checksum,
    "provider": "none"
  })
};

request(options, (error, response, body) => {
  if (error) {
    console.error(error);
  } else {
    console.log(body);
  }
});

  
	  request(options, (error, response, body) => {
    if (error) {
      console.log('error')
      console.error(error);
    } else {
      console.log('martin')
      console.log(body);
    }
  });