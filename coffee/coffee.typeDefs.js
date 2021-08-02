import { gql } from "apollo-server";

export default gql`
  type Coffee {
    id: Int!
    name: String!
  }
  type Query {
    coffee(name: String!): Coffee
  }
`;
