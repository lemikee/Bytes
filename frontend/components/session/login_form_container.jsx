import { connect } from "react-redux";
import { login, removeErrors } from "../../actions/session_actions";
import LoginForm from "./login_form";

const mapStateToProps = (state) => ({
  errors: state.ui.errors.sessionErrors,
  formType: "Log In",
});

const mapDispatchToProps = (dispatch) => ({
  processForm: (user) => dispatch(login(user)),
  removeErrors: () => dispatch(removeErrors()),
});

export default connect(mapStateToProps, mapDispatchToProps)(LoginForm);
