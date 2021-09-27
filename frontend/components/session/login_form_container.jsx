import LoginForm from "./login_form";
import { connect } from "react-redux";
import { login } from "../../actions/session_actions";

const mapStateToProps = state => ({
  errors: state.ui.errors.sessionErrors,
  formType: 'Log In'
});

const mapDispatchToProps = dispatch => ({
  processForm: user => dispatch(login(user))
});

export default connect(mapStateToProps, mapDispatchToProps)(LoginForm);
