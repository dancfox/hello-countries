

const faker = require('faker');

exports.lambdaHandler = async (event, context) => {
    
    console.log('Hello containers users from ' + faker.address.country() + '!');

    console.log(event);
    console.log(context);

    return "Success";
};

