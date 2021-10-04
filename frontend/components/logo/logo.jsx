import React from "react";
import { Link } from "react-router-dom";

const Logo = (props) => (
  <div className="logo-container flex-container">
    <Link to="/">
      <h1 className="float-child green">Bytes</h1>
    </Link>
    <i className="fab fa-yelp fa-4x float-child blue"></i>
  </div>
);

export default Logo;
