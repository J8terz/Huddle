import { Navigate, useLocation } from 'react-router-dom';

function Protected({ token, children}) {
  const location = useLocation();

  if (!token) {
    // Redirect to login but save the current location they were trying to go to
    return <Navigate to="/login" state={{ from: location }} replace />;
  }

  // Return children as JSX directly (not wrapped in any other component)
  return children;
}

export default Protected;