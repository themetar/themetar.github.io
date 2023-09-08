document.addEventListener("click", event => {
  // interscept links
  const target = event.target;
  if (target.tagName === "A") {
    const href = target.getAttribute("href");
    const [hrefPath, fragment] = href.split("#");
    const pagePath = document.location.pathname;
    if (hrefPath === "" || hrefPath === pagePath) {
      if (fragment && fragment !== "") {
        event.preventDefault();
        document.getElementById(fragment).scrollIntoView({behavior: "smooth"});
      }
    }
  }
});
