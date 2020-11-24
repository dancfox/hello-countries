

FROM 628053151772.dkr.ecr.sa-east-1.amazonaws.com/awslambda/nodejs12.x-runtime:beta 

# Copy handler function and dependency requirements 
COPY app.js .
COPY package.json .

# Install NPM dependencies for function 
RUN npm install

# Set the CMD to your handler  
CMD [ "app.lambdaHandler" ]



