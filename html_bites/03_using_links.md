# Using links

_**This is a Makers Vine.** Vines are designed to gradually build up sophisticated skills. They contain a mixture of text and video, and may contain some challenge exercises without proposed solutions. [Read more about how to use Makers
Vines.](https://github.com/makersacademy/course/blob/main/labels/vines.md)_

Learn to use HTML links to make the browser send `GET` requests.

## Intro

Let's consider the following situation. We have two routes:
  * `GET /` is the "root", returning HTML code — in other words, it is the website homepage.
  * `GET /about` is another route, returning some different HTML — it's a different page.

The web browser can send requests to these two routes separately.
  * If we were to enter directly in the URL bar `http://localhost:9292`, the browser would send a request to the first route, and the browser would receive and show the homepage.
  * If we were to enter directly in the URL bar `http://localhost:9292/about`, the browser would send a request to the second route, and the browser would receive and show that other page.

However, when building websites, we don't want users to manually enter a new URL every time they need to go to a different page. We need a way to "tell" the browser when to send a new request to a different page.

We use **links**, or **anchor links** for this. A link is an HTML tag that will be rendered as a hypertext link by the browser, so the user can click on it. This link points to a different URL. When the user clicks, the browser will send a new `GET` request to that URL, and eventually the page will change.

The `<a>` HTML tag is used to create links. The attribute `href` tells the browser which path it should send the next request to, when that link is clicked.

```html
<a href="/about">Go to the about page</a>
```

When the above link is clicked, the browser will send a new request `GET /about` to the server.

## Demonstration

@TODO

## Exercise

@TODO

## Challenge

This is a process feedback challenge. That means you should record yourself doing it and
submit that recording to your coach for feedback. [How do I do
this?](https://github.com/makersacademy/golden-square/blob/main/pills/process_feedback_challenges.md)

Test-drive and implement the following changes to the `music_library_exemplar` project:
1. The list of albums page returned by `GET /albums` should contain anchor links for each album listed.   
  Each anchor link should direct to `GET /album?id={ID}` where `{ID}` needs to be the corresponding id.
2. The route `GET /album` should return an HTML page for a single album.

[After you're done, submit your recording here](https://airtable.com/shrNFgNkPWr3d63Db?prefill_Item=web_as03).

[Next Challenge](04_using_forms.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_bites/03_using_links.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_bites/03_using_links.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_bites/03_using_links.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_bites/03_using_links.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy/web-applications&prefill_File=html_bites/03_using_links.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->