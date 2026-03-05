# Athena Holistic Health Website

A modern, mobile-friendly website for Athena Holistic Health - a classical homeopathy practice in Redmond, WA.

## Overview

This is a modernized version of the original marlev.com website, redesigned with clean HTML5, responsive CSS, and mobile-first design principles. The site is optimized for hosting on GitHub Pages as a static website.

## Features

- **Modern HTML5**: Clean, semantic markup without legacy FrontPage code
- **Responsive Design**: Mobile-friendly layout that works on all device sizes
- **Simple CSS**: Single stylesheet with no frameworks, easy to maintain
- **Fast Loading**: Minimal dependencies, optimized for performance
- **Accessible**: Follows web accessibility best practices
- **SEO Optimized**: Proper meta tags and semantic structure

## Website Structure

```
marlevweb/
├── index.html              # Home page
├── about-homeopathy.html   # Information about homeopathy
├── acute-conditions.html   # Acute conditions treatment info
├── articles.html           # Articles, videos, and resources
├── contact.html            # Contact form and information
├── directions.html         # Office location and directions
├── styles.css              # Main stylesheet
└── README.md              # This file
```

## Pages Included

1. **Home (index.html)** - Main landing page with practice overview
2. **About Homeopathy** - Comprehensive information about homeopathic medicine
3. **Acute Conditions** - Guide for treating acute illnesses with questionnaire
4. **Articles & Resources** - Links to videos, articles, retailers, and referrals
5. **Contact** - Contact form and office information
6. **Directions** - Interactive map and driving directions

## Technology Stack

- **HTML5**: Modern semantic markup
- **CSS3**: Flexbox and Grid for responsive layouts
- **No JavaScript**: Pure HTML/CSS for maximum compatibility and speed
- **No Frameworks**: Lightweight and easy to maintain

## Local Development & Testing

To test the website locally on your Mac:

```bash
# Run the development server
./serve.sh
```

This will:
- Start a local web server on port 8000
- Automatically open your browser to http://localhost:8000
- Allow you to test the website before deploying

Press `Ctrl+C` to stop the server when done.

**Alternative manual method:**
```bash
# Using Python 3 (recommended)
python3 -m http.server 8000

# Then open your browser to http://localhost:8000
```

## Deploying to GitHub Pages

### Option 1: Quick Setup

1. Create a new GitHub repository named `marlev-web` (or your preferred name)
2. Push this code to the repository:
   ```bash
   git init
   git add .
   git commit -m "Initial commit: Modernized Athena Holistic Health website"
   git branch -M main
   git remote add origin https://github.com/YOUR_USERNAME/marlev-web.git
   git push -u origin main
   ```
3. Go to repository Settings → Pages
4. Under "Source", select "main" branch and "/" (root) folder
5. Click "Save"
6. Your site will be live at `https://YOUR_USERNAME.github.io/marlev-web/`

### Option 2: Custom Domain

If you want to use www.marlev.com:

1. Follow steps 1-5 from Option 1
2. In your repository settings, go to Pages
3. Under "Custom domain", enter `www.marlev.com`
4. Add a CNAME file to your repository with `www.marlev.com` as content
5. Configure your DNS settings:
   - Add a CNAME record pointing `www` to `YOUR_USERNAME.github.io`
   - Or add A records pointing to GitHub's IP addresses

## Customization

### Updating Colors

Edit the CSS variables in `styles.css`:

```css
:root {
    --primary-color: #2c5f7c;      /* Main brand color */
    --secondary-color: #4a8ba8;    /* Secondary brand color */
    --accent-color: #7eb3c9;       /* Accent color */
    /* ... more colors ... */
}
```

### Adding Images

1. Create an `images` folder in the root directory
2. Add your images
3. Update the image sources in HTML files:
   ```html
   <img src="images/your-image.jpg" alt="Description">
   ```

### Contact Form Setup

The contact form needs a backend service to work. Options:

1. **Formspree** (Recommended for static sites)
   - Sign up at [formspree.io](https://formspree.io/)
   - Get your form endpoint
   - Update the form action in `contact.html`:
     ```html
     <form action="https://formspree.io/f/YOUR_FORM_ID" method="POST">
     ```

2. **Netlify Forms** (If hosting on Netlify)
   - Add `netlify` attribute to form
   - Form submissions automatically handled

3. **Email Link** (Simplest)
   - Use the email link: users click and their email client opens

## Browser Support

- Chrome/Edge (latest)
- Firefox (latest)
- Safari (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)
- Internet Explorer 11 (graceful degradation)

## Maintenance

### Regular Updates

1. Update copyright year in footer (currently 2005-2026)
2. Verify external links are still active
3. Update practitioner information as needed
4. Add new articles and resources

### Adding a New Page

1. Create a new HTML file using existing pages as templates
2. Copy the header, navigation, and footer from another page
3. Update the navigation active state
4. Add your content in the main section
5. Link to the new page from navigation and relevant pages

## Performance Optimization

The site is already optimized, but you can further improve it:

1. **Compress images**: Use tools like TinyPNG before uploading
2. **Enable caching**: Configure via hosting provider
3. **CDN**: Consider using a CDN for faster global delivery
4. **Minify CSS**: Use a CSS minifier for production

## Accessibility

The site follows WCAG 2.1 Level AA guidelines:

- Semantic HTML5 elements
- Proper heading hierarchy
- Alt text for images
- Sufficient color contrast
- Keyboard navigation support
- Responsive text sizing

## Notes for Original Site Migration

### Changes from Original Site

- Removed FrontPage generated code
- Simplified navigation structure
- Combined redundant pages
- Removed password-protected sections (can be re-added with authentication service)
- Converted inline styles to external CSS
- Removed outdated browser-specific code
- Updated to modern HTML5 doctype

### Pages Not Migrated

- Russian version (Russian.htm) - Can be added later
- Password-protected appointment/payment forms - Require authentication backend
- Downloadable files (PDFs, RTF) - Should be added to a documents folder

### To-Do After Deployment

- [ ] Add actual photos/images (currently using placeholders)
- [ ] Set up contact form backend
- [ ] Add Russian language version if needed
- [ ] Implement appointment booking system if desired
- [ ] Add downloadable resources (PDFs, forms)
- [ ] Set up Google Analytics or similar tracking
- [ ] Test on various devices and browsers
- [ ] Verify all external links work
- [ ] Add SSL certificate (automatic with GitHub Pages)

## Support

For questions about the website code or structure, refer to this README or standard HTML/CSS documentation.

For homeopathy-related questions, contact:
- **Phone**: 425.241.4376
- **Email**: valerie@athenaholistichealth.com
- **Address**: 7981 168th Ave NE, Suite 218, Redmond, WA 98052

## License

© 2005-2026 Athena Holistic Health. All Rights Reserved.

---

**Last Updated**: March 2026
