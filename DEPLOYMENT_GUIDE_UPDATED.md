# Money Management Pro - Deployment Guide (Updated Version)

## 🚀 Quick Deploy Guide

### Deploy to Railway
1. Use `railway.updated.json` configuration
2. Use `dockerfile.updated` for Docker build
3. Use `server.updated.js` as the production server
4. Use `package.updated.json` for dependencies

### Deploy to Render
1. Use `server.updated.js` as the start command
2. Set build command: `npm run build`
3. Set start command: `node server.updated.js`
4. Use `package.updated.json` as package.json

## 📦 Configuration Files

### Key Files for Deployment
- `server.updated.js` - Production server with enhanced routing and API
- `package.updated.json` - Updated dependencies and scripts
- `dockerfile.updated` - Multi-stage Docker build
- `railway.updated.json` - Railway deployment configuration

### Environment Variables
```
NODE_ENV=production
PORT=3000
DATABASE_URL=your_database_url_here
```

## 🏗️ Build Process

1. **Install dependencies:**
   ```bash
   npm install
   ```

2. **Build the application:**
   ```bash
   npm run build
   ```

3. **Start production server:**
   ```bash
   npm start
   ```

## 🔧 Key Features

### Enhanced Production Server
- ✅ Proper CORS configuration for Railway/Render
- ✅ Enhanced API routes with full CRUD operations
- ✅ Health check endpoint at `/health`
- ✅ SPA routing support for React Router
- ✅ Error handling and logging
- ✅ Static file serving from `dist` folder

### API Endpoints
- `GET /health` - Health check
- `GET /api/auth/user` - User authentication
- `GET /api/sessions` - Get all sessions
- `POST /api/sessions` - Create new session
- `GET /api/sessions/:id` - Get specific session
- `PUT /api/sessions/:id` - Update session
- `DELETE /api/sessions/:id` - Delete session
- `GET /api/sessions/:id/bets` - Get session bets
- `POST /api/sessions/:id/bets` - Create new bet

### Strategy Pages
- `/` - Home page with strategy selection
- `/strategia/percentage` - Percentage strategy
- `/strategia/dalembert` - D'Alembert strategy
- `/strategia/masaniello` - Masaniello strategy
- `/strategia/kelly` - Kelly Criterion strategy
- `/strategia/beat-delay` - Beat Delay strategy
- `/strategia/profitfall` - Profit Fall strategy

## 🐛 Troubleshooting

### Common Issues
1. **Build fails:** Check if all dependencies are installed
2. **Server won't start:** Verify PORT environment variable
3. **API not working:** Check CORS configuration
4. **Routes not found:** Ensure SPA fallback is working

### Health Check
Visit `/health` endpoint to verify deployment:
```json
{
  "status": "ok",
  "timestamp": "2025-01-08T12:00:00.000Z",
  "environment": "production",
  "version": "2.0.0-updated"
}
```

## 📱 Features Included

### Original Interface Restored
- ✅ Home page with strategy buttons
- ✅ Individual strategy pages
- ✅ Professional UI with Radix components
- ✅ Dark/Light theme support
- ✅ Responsive design
- ✅ Real-time betting calculations

### Betting Strategies
- ✅ Percentage Strategy
- ✅ D'Alembert Strategy
- ✅ Masaniello System
- ✅ Kelly Criterion
- ✅ Beat Delay Strategy
- ✅ Profit Fall Strategy

## 📊 Version Information

- **Version:** 2.0.0-updated
- **Build Date:** January 8, 2025
- **Features:** Original interface with enhanced deployment support
- **Compatibility:** Railway, Render, Docker, Node.js 18+

## 🎯 Next Steps

1. Extract the ZIP file to your deployment platform
2. Use the appropriate configuration files for your platform
3. Set environment variables as needed
4. Deploy using the provided scripts and configurations
5. Test the `/health` endpoint to verify deployment

---

✅ **Ready for Production Deployment**