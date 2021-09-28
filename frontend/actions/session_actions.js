import * as SessionUtils from '../util/session_api_util';

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const LOGOUT_CURRENT_USER = 'LOGOUT_CURRENT_USER';
export const RECEIVE_ERRORS = 'RECEIVE_ERRORS';
export const REMOVE_ERRORS = "REMOVE_ERRORS";

const receiveCurrentUser = (currentUser) => ({
  type: RECEIVE_CURRENT_USER,
  currentUser,
});

const logoutCurrentUser = () => ({
  type: LOGOUT_CURRENT_USER,
});

export const receiveErrors = (errors) => ({
  type: RECEIVE_ERRORS,
  errors,
});

export const removeErrors = () => ({
  type: REMOVE_ERRORS,
});

export const login = (user) => (dispatch) =>
  SessionUtils.login(user).then(
    (currentUser) => dispatch(receiveCurrentUser(currentUser)),
    (error) => dispatch(receiveErrors(error))
  );

export const logout = () => (dispatch) =>
  SessionUtils.logout().then(() => dispatch(logoutCurrentUser()));

export const signup = (user) => (dispatch) =>
  SessionUtils.signup(user).then(
    (currentUser) => dispatch(receiveCurrentUser(currentUser)),
    (error) => dispatch(receiveErrors(error))
  );
