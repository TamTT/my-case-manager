"use strict";

var _templateObject = _taggedTemplateLiteral(["\n      {\n        cases {\n          id\n        }\n      }\n    "], ["\n      {\n        cases {\n          id\n        }\n      }\n    "]);

function _taggedTemplateLiteral(strings, raw) { return Object.freeze(Object.defineProperties(strings, { raw: { value: Object.freeze(raw) } })); }

//import React from 'react';
//import ReactDOM from 'react-dom';
//import './index.css';
//xxsimport App from './App';
// import * as serviceWorker from './serviceWorker';
// import ApolloClient from "apollo-boost";
//import gql from "graphql-tag";

//import { render } from "react-dom";

//import { ApolloProvider } from "react-apollo";

var ReactDOM = require("react-dom");
var serviceWorker = require("./serviceWorker");
var ApolloClient = require("apollo-boost");
var reactApollo = require("react-apollo");
var gql = require("graphql-tag");
var css = require('./index.css');

var ApolloProvider = reactApollo.ApolloProvider;
var client = new ApolloClient({
    uri: "http://localhost:3000/graphiql"
});

client.query({
    query: gql(_templateObject)
}).then(function (result) {
    return console.log(result);
});

var App = function App() {
    return React.createElement(
        ApolloProvider,
        { client: client },
        React.createElement(
            "div",
            null,
            React.createElement(
                "h2",
                null,
                "My first Apollo app \uD83D\uDE80"
            )
        )
    );
};

ReactDOM.render(React.createElement(App, null), document.getElementById("root"));

// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: http://bit.ly/CRA-PWA
serviceWorker.unregister();