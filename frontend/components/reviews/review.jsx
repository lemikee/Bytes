import React from "react";

class Review extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.fetchUser(this.props.review.userId);
  }

  render() {
    let userContent = "";
    if (this.props.user) {
      const { first_name, last_name, zip_code } = this.props.user;
      userContent = (
        <div className="user-info">
          <h4>
            {/* {first_name} {last_name.slice(0, 1)} */}
          </h4>
          <p>{zip_code}</p>
        </div>
      );
    }
    return (
      <div className="review-container">
        {/* <div className="user-container">
          <img width="50px" height="50px" />
          <div className="user-info">{userContent}</div>
        </div>
        <p className="comment">{this.props.review.content}</p> */}
      </div>
    );
  }
}

export default Review;
