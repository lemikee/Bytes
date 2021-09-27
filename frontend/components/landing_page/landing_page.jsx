import React from 'react';
import NavBar from '../nav_bar/nav_bar';
import NavBarContainer from '../nav_bar/nav_bar_container';

const LandingPage = (props) => (
  <div>
    <NavBarContainer />
    <div className='icon'>
      <h1 id='icon'>Welcome to Bytes</h1>
    </div>
  </div>
);

export default LandingPage;
