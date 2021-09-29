import React from "react";

class SearchBar extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      find: "",
      near: "",
    };
  }
  render() {
    return (
      <div className="search-bar">
        <h2>Find</h2>
        <input type="text" placeholder="takeout, pizza, ice cream..." />
        <h2>| Near</h2>
        <input type="text" placeholder="San Francisco, CA" />
        <i className="fas fa-search"></i>
      </div>
    );
  }
}

export default SearchBar;
