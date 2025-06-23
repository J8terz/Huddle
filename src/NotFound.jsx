import { Navigate, useLocation, useParams } from 'react-router-dom';

function Protected({ token, children, path = '/' }) {
  const location = useLocation();
  const params = useParams();

  // Handle dynamic paths (like event/:eventid)
  const redirectPath = path.includes(':') 
    ? Object.entries(params).reduce(
        (acc, [key, value]) => acc.replace(`:${key}`, value), 
        path
      )
    : path;

  if (!token) {
    return (
      <Navigate 
        to="/login" 
        state={{ 
          from: location,
          redirectTo: redirectPath 
        }} 
        replace 
      />
    );
  }

  return children;
}

export default Protected;