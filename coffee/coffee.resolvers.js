import client from "../client";

export default {
  Query: {
    coffee: (_, { name }) =>
      client.coffee.findUnique({
        where: {
          name,
        },
      }),
  },
};
