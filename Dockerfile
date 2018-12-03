FROM library/node:10-alpine

RUN mkdir /data
WORKDIR /data

ENV PATH="/data/node_modules_grunt-cli/bin:${PATH}"
COPY . /data/
RUN npm install --devDependencies

CMD ./bin_wrapper.sh
