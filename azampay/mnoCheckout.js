import fetch from 'node-fetch';

const data = {
  'accountNumber': '0710426568',
  'amount': '1000',
  'currency': 'TZS',
  'externalId': '123',
  'provider': 'Tigo',
  'additionalProperties': {
    'property1': null,
    'property2': null
  }
};

const headers = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer ' + 'U2FsdGVkX1/joMxceDdnfPRM1ldQpjtG/fRiV1pjPeSueH0/v3g8k92gB82gLZ/9mjOmZPzSN18vbPw+FSwVAFvq+lCfdhwHOCXW/TqwmixKodHzjJnUgNZDEQywC8IHMdfs1Angh/xjgOu/d+JCiKTdFyKGNQ0uW98+LQKmNQxOl/2I/RThdFtplFjjl3EViHsxmJ/pNvIYxqVZ3WDrbSvRGh5Htv9hVg9iy9qj2F1MjJSV5DAxePKP6IGhtKn4v6buSuTthiQqG9FedhIkI3ZgpGqRtIVyL92rPewxLr0MurFsSQ99iQaL5hfG8K7G+E5kWgcxTxy3QpI54Yr/sLoofy4kBt1LqLb8OgpOTK/sXqSimUU9m0i3GfFBx36Ej9UTrJOPhrcgrNy2TFLNn5tYyG1LEJe/biAItQzjJ7aH+Q3YhgxCvJLspcoLSQ/mPiTzEbZ5+afmJkLNdzXvgWciCHZ+zJWFilKDiXkCABprRXds/l/m+iP/q7GxB2brl0jtw/gcPAFZ+eyh6xVCLyU0zgmfufFLd2FmZOa9y56N0YitfXD1vMaA6qDtjtQbjQ3rnM92yRx4WHi1PhIyjoSjB8k7lkKNkZnny/2Sb/AbS6pRw+OtdEw8f1akBUMHy7OPDXc/0vZSZC5Zi66RO38F+JrKkCPYqswBXRjHU7ee9zpBvqNqBrjOjoTRQRDCaujzaOHoZJMuQyQY3hbkKl04lJRUpHHkkzZ6WSPNsPdTgEgKjJp6iSey9mrQwuSSqLSPX2gQTgrCLgnqz7lvd1gonrqtms2VxRmTIt89dbVgeydAPPYXUxG8OanM2AvWnFCAehgPlQ2KpP0GSntdVZmO8LR42x9C70dIknxLZ1CVl3wmvTMcTY535ui4haZWM95ZvEl1/o8ZldrnmAPu9lmcFG0TFXM2zo2IWPMvmp43bjBAeJwAbJyXZawT9an0pRgxtfF78FkGrqi66IJvCIUFK/5RdRnwPhC8dQni/BEjE/Z/Mh+ftm84OtE6xJxuKa0dOFdcjBj8gYF7ZgblnrK0MsvPqBxjgY6FLWx9NLTNh4aiwMUgYBPtzr9K0e0r'
  
};

fetch(`https://checkout.azampay.co.tz/azampay/mno/checkout`, {
  method: 'POST',
  headers,
  body: JSON.stringify(data), // Ensure data is stringified for POST requests
})
  .then(res => {
    if (!res.ok) {
      throw new Error(`HTTP error! Status: ${res.status}`);
    }
    return res.json(); // Assuming the response is JSON, adjust accordingly
  })
  .then(responseData => {
    console.log('Response:', responseData);
    // Handle the response data as needed
  })
  .catch(error => {
    console.error('Error:', error.message);
    // Handle the error
  });
