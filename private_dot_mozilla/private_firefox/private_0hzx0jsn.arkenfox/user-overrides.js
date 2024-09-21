// Arkenfox Override Settings file

// What does this do?
// https://github.com/arkenfox/user.js/wiki/3.1-Overrides
// The override changes the stated settings, to fit your needs
// Please modify it how you like, but don't modify the user.js itself

// Disable Letterboxing (remove the screenborders, this makes you fingerprintable)
// user_pref("privacy.resistFingerprinting.letterboxing", false);

// Allow Mozilla Addons Manager for regular behavior
// user_pref("privacy.resistFingerprinting.block_mozAddonManager", block);

// Allow Firefoxes new Version notifications
// user_pref("browser.startup.homepage_override.mstone", "REPLACEWITHVERSIONNUMBER"); // what to do to remove this line?
user_pref("browser.startup.homepage", "about:home");
user_pref("browser.startup.page", 3);
user_pref("browser.newtabpage.enabled", true);

// History & Session
// delete history after one week
user_pref("browser.history_expire_days", 7);
// Don't restore pinned tabs
user_pref("browser.sessionstore.restore_pinned_tabs_on_demand", false);

user_pref("privacy.clearOnShutdown.history", false);
user_pref("privacy.clearOnShutdown.sessions", false);


// Add any search engine you want
user_pref("browser.urlbar.update2.engineAliasRefresh", true);

// Enable chrome/userChrome.css
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);

user_pref("browser.safebrowsing.downloads.remote.url", "");

user_pref("signon.rememberSignons", false);

user_pref("extensions.pocket.enabled", false);

// Sidebery wants this:
user_pref("svg.context-properties.content.enabled", true);

// Use KDE (or another default) system file picker instead of the terrible Gnome one
user_pref("widget.use-xdg-desktop-portal.mime-handler", 1);
user_pref("widget.use-xdg-desktop-portal.file-picker", 1);

user_pref("webgl.disabled", false);
