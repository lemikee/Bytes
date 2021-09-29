import React from "react";
import { Link } from "react-router-dom";

const Logo = (props) => (
  // <div className='logo-container'>
  //     <Link to='/'><h1 id='logo' >Bytes</h1></Link>
  //     <img src={window.logo} width='50px' />

  // </div>

  <div className="logo-container flex-container">
    <Link to="/">
      <h1 className="float-child green">Bytes</h1>
    </Link>
    {/* <img src={window.logo} width="50px" className="float-child blue" /> */}
    <i className="fab fa-yelp fa-4x float-child blue"></i>
  </div>
);

export default Logo;
