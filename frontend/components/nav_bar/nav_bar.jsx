import React from 'react';
import { Link } from 'react-router-dom';
class NavBar extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    let navRight;
    if (!this.props.currentUser) {
      navRight = (
        <ul>
          <li><Link to='/login'>Login</Link></li>
          <li><Link to='/signup' className='signup-link'>Sign Up</Link></li>
        </ul>
      );
    } else {
      navRight = (
        <ul>
          <li>
            <button onClick={() => this.props.logout()} className='logout-btn'>Log Out</button>
          </li>
        </ul>
      );
    }

    return (
      <div className='nav-bar'>
        <ul>

        </ul>
        {navRight}
      </div>
    );
  }
}

export default NavBar;
