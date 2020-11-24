

const faker = require('faker');

exports.lambdaHandler = async (event) => {
    
    console.log('Hello containers users from ' + faker.address.country() + '!');

    return "Success";
};

