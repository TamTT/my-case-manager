//import React from 'react';
//import ReactDOM from 'react-dom';
//import './index.css';
//import App from './App';
// import * as serviceWorker from './serviceWorker';
// import ApolloClient from "apollo-boost";
//import gql from "graphql-tag";

//import { render } from "react-dom";

//import { ApolloProvider } from "react-apollo";

const ReactDOM = require("react-dom");
const serviceWorker = require("./serviceWorker");
const ApolloClient = require("apollo-boost");
const reactApollo = require("react-apollo");
const gql = require("graphql-tag");
const css = require('./index.css');

const ApolloProvider = reactApollo.ApolloProvider
const client = new ApolloClient({
    uri: "http://localhost:3000/graphiql"
});

client
    .query({
        query: gql`
      {
        cases {
          id
        }
      }
    `
    })
    .then(result => console.log(result));

const App = () => (
    <ApolloProvider client={client}>
    <div>
    <h2>My first Apollo app</h2>
</div>
</ApolloProvider>
);

ReactDOM.render(<App />, document.getElementById("root"));

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: http://bit.ly/CRA-PWA
serviceWorker.unregister();



