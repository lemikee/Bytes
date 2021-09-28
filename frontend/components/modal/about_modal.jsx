import React from "react";
import { Link } from "react-router-dom";
import Modal from "react-modal";

export default class CustomModal extends React.Component {
  constructor() {
    super();
    this.openModal = this.openModal.bind(this);
    this.closeModal = this.closeModal.bind(this);
    this.state = {
      open: false,
    };
  }

  openModal() {
    this.setState({ open: true });
    $(function () {
      $("#custom-modal").appendTo("body");
    });
  }

  closeModal() {
    this.setState({ open: false });
  }

  componentDidMount() {
    $(function () {
      $("#custom-modal").appendTo("body");
    });
  }

  render() {
    return (
      <div>
        <button onClick={this.openModal}>Bio</button>
        <Modal
          id="custom-modal"
          isOpen={this.state.open}
          onRequestClose={this.closeModal}
        >
          Hello
          <button onClick={this.closeModal}>Close</button>
        </Modal>
      </div>
    );
  }
}
