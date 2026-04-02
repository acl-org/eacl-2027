---
title: Call for Student Research Workshop Papers
hide_title: true
layout: single
permalink: /calls/srw/
sidebar:
  nav: calls
toc: true
toc_only: false
toc_sticky: true
toc_icon: "cog"
published: false
---


<h1>Call for Papers – EACL 2026 Student Research Workshop (SRW)</h1>
<nav class="srw-tabbar" role="navigation" aria-label="SRW secondary">
  <ul class="srw-tabs">
    <li class="active"><a href="{{ '/calls/srw/' | relative_url }}">Call</a></li>
    <li><a href="{{ '/calls/srw/guidelines/' | relative_url }}">Author Guidelines</a></li>
    <li><a href="{{ '/calls/srw/faq/' | relative_url }}">FAQ</a></li>
    <li><a href="{{ '/calls/srw/mentor-guidelines/' | relative_url }}">Mentor Guidelines</a></li>
  </ul>
</nav>

<style>
.srw-tabbar { margin: 1.2rem 0 2rem; }
.srw-tabs { list-style: none; padding: 0; margin: 0; display: flex; flex-wrap: wrap; gap: .35rem; }
.srw-tabs li { margin: 0; }
.srw-tabs a {
  display: block;
  padding: .55rem 1rem;
  border: 1px solid #ccc;
  border-bottom: 2px solid transparent;
  border-radius: 6px;
  background: #f8f8f8;
  text-decoration: none;
  font-weight: 600;
  font-size: .95rem;
}
.srw-tabs li.active a,
.srw-tabs a:hover,
.srw-tabs a:focus {
  background: #fff;
  border-color: #999 #999 #444;
  border-bottom-color: #222;
}

/* News feed styles */
.news-feed {
  --nf-bg: #ffffff;
  --nf-border: #e5e7eb;
  --nf-text: #111827;
  --nf-muted: #6b7280;
  --nf-accent: #2563eb;
  --nf-accent-weak: rgba(37, 99, 235, 0.08);

  background: var(--nf-bg);
  border: 1px solid var(--nf-border);
  border-radius: 8px;
  padding: 14px 12px; /* more breathing room */
  margin: 1rem 0 1.75rem; /* avoid collisions with neighbors */
  max-height: 280px;
  overflow: auto;
  position: relative;
  box-sizing: border-box;
  clear: both; /* in case previous sections use floats */
}
.news-feed::-webkit-scrollbar { width: 8px; }
.news-feed::-webkit-scrollbar-thumb {
  background-color: #cbd5e1;
  border-radius: 4px;
}
.news-feed__list { list-style: none; margin: 0; padding: 0; }
.news-feed__item {
  display: grid;
  grid-template-columns: 120px 1fr; /* wider date column to prevent wrap/overlap */
  gap: 1.5em; /* a bit more separation */
  align-items: start;
  padding: 12px 10px;
  border-left: 3px solid transparent;
  border-radius: 6px;
  border-top: 1px dashed var(--nf-border);
}
.news-feed__item:first-child { border-top: none; }
.news-feed__item:hover {
  background: var(--nf-accent-weak);
  border-left-color: var(--nf-accent);
}
.news-feed__date { color: var(--nf-muted); white-space: nowrap; margin-top: 2px; line-height: 1.3; }
.news-feed__content { color: var(--nf-text); line-height: 1.5; }
.news-feed a { color: var(--nf-accent); text-decoration: none; }
.news-feed a:hover { text-decoration: underline; }
/* reduce top margin when News follows a heading */
h2 + .news-feed { margin-top: 0.5rem; }
@media (max-width: 600px) {
  .news-feed__item { grid-template-columns: 1fr; gap: 6px; padding: 12px; }
  .news-feed { max-height: 360px; margin: 0.75rem 0 1.5rem; }
  .news-feed__date { white-space: normal; }
}

/* Ensure long URLs in quick links wrap within container */
.srw-quick-links, .srw-quick-links li, .srw-quick-links a {
  overflow-wrap: anywhere; /* modern */
  word-break: break-word;  /* fallback */
}
.srw-quick-links a {
  white-space: normal;
  display: inline-block;
  max-width: 100%;
}
</style>

<div class="srw-quick-links" style="border:1px solid #ccc;border-radius:6px;padding:0.85rem 1rem;background:#f5f7fa;margin:1.5rem 0;">
<strong>Submission Links</strong>
<ul style="margin:0.5rem 0 0 1.1rem;">
  <li>Pre-submission Mentorship: <a href="https://openreview.net/group?id=eacl.org/EACL/2026/SRW_Mentorship">https://openreview.net/group?id=eacl.org/EACL/2026/SRW_Mentorship</a></li>
  <li>Main SRW Paper Submission: <a href="https://openreview.net/group?id=eacl.org/EACL/2026/SRW">https://openreview.net/group?id=eacl.org/EACL/2026/SRW</a></li>
  <li>ARR Commitment Site: <a href="https://openreview.net/group?id=eacl.org/EACL/2026/SRW_ARR_Commitment">https://openreview.net/group?id=eacl.org/EACL/2026/SRW_ARR_Commitment</a></li>
</ul>
</div>

## News
<div class="news-feed" role="feed" aria-label="Recent updates">
  <ul class="news-feed__list">
    <li class="news-feed__item" role="article">
      <time class="news-feed__date" datetime="2026-01-029">Jan 29, 2026</time>
      <div class="news-feed__content">
        The camera-ready submission deadline has been corrected to February 8, 2026.
      </div>
    </li>
    <li class="news-feed__item" role="article">
      <time class="news-feed__date" datetime="2026-01-08">Jan 8, 2026</time>
      <div class="news-feed__content">
        The grant application details have been published. The deadline for grant application is February 10, 2026.
      </div>
    </li>
    <li class="news-feed__item" role="article">
      <time class="news-feed__date" datetime="2025-12-01">Dec 1, 2025</time>
      <div class="news-feed__content">
        The author guidelines and FAQ have been updated to include a limit on first-author submissions.
      </div>
    </li>
    <li class="news-feed__item" role="article">
      <time class="news-feed__date" datetime="2025-11-30">Nov 30, 2025</time>
      <div class="news-feed__content">
        The author guidelines and FAQ have been updated to clarify the multiple submission policy, which also applies to the pre-submission mentorship program.
      </div>
    </li>
    <li class="news-feed__item" role="article">
      <time class="news-feed__date" datetime="2025-11-10">Nov 7, 2025</time>
      <div class="news-feed__content">
        The ARR commitment site is now up. The deadline for ARR commitment is January 6, 2026.
      </div>
    </li>
    <li class="news-feed__item" role="article">
      <time class="news-feed__date" datetime="2025-11-01">Nov 1, 2025</time>
      <div class="news-feed__content">
        The mentor guidelines have been published. Please see <a href="{{ '/calls/srw/mentor-guidelines/' | relative_url }}">here</a>.
      </div>
    </li>
    <li class="news-feed__item" role="article">
      <time class="news-feed__date" datetime="2025-10-29">Oct 29, 2025</time>
      <div class="news-feed__content">
        The pre-submission mentorship deadline has passed. We have received a record number of 52 submissions for mentorship! Thank you to all students and mentors for your participation.
      </div>
    </li>
    <li class="news-feed__item" role="article">
      <time class="news-feed__date" datetime="2025-10-27">Oct 27, 2025</time>
      <div class="news-feed__content">
        Following request from the community, the pre-submission mentorship deadline has been extended to October 29th, 2025.
      </div>
    </li>
    <li class="news-feed__item" role="article">
      <time class="news-feed__date" datetime="2025-10-17">Oct 17, 2025</time>
      <div class="news-feed__content">
        Additional guideline on the use of generative AI writing assistance tools has been added.
        See the SRW Author Guidelines <a href="{{ '/calls/srw/guidelines/#use-of-ai-writing-assistance' | relative_url }}">here</a>.
      </div>
    </li>
  </ul>
</div>


## About the Student Research Workshop

The EACL 2026 Student Research Workshop (SRW) is a forum to bring together students investigating various areas of Computational Linguistics and Natural Language Processing. The workshop provides an excellent opportunity for participants to present their work and to receive mentorship and valuable feedback from the international research community.
The workshop's goal is to aid students at multiple stages of their education, including undergraduate, MSc/MA, junior and senior PhD students, in getting familiar with conducting and presenting their research.

We invite papers in two different categories:  
* **Thesis Proposals**: This category is appropriate for PhD students who have decided on a thesis topic and wish to get feedback on their proposal and broader ideas for their continuing work.
* **Research Papers**: Papers in this category can describe completed work, or work in progress with preliminary results. For these papers, the first author **MUST** be a student (undergraduate or graduate).  

Topics of interest for the SRW are the same as for the main EACL 2026 conference: [https://2026.eacl.org/calls/papers/](https://2026.eacl.org/calls/papers/).

## Why Submit to EACL SRW?
* **Mentorship program**: EACL SRW provides a unique opportunity for students to receive constructive feedback and advice from more senior researchers through our on-site mentorship program.
* **Improving your publication record**: Publishing a paper as an undergraduate or as a Master student is beneficial when applying for a PhD program. Publishing a paper in an EACL SRW workshop can be really helpful for improving students’ publication records.
* **Negative results**: we encourage the submission of studies with negative results providing insights on why and in which scenarios a particular method fails.

All accepted papers and thesis proposals will be presented in **the main conference poster sessions**, which will give students an opportunity to interact with and to present their work to a large and diverse audience, including top researchers in the field and assigned mentors.

## Important Dates
* **Pre-submission mentorship deadline**: ~~October 27th, 2025~~ October 29th, 2025
* **Pre-submission mentorship feedback due**: December 1, 2025
* **Direct Workshop paper submission deadline**: December 22, 2025
* **ARR Commitment deadline**: January 6, 2026
* **Notification of acceptance**: February 2, 2026
* **Camera-ready papers due**: ~~February 16, 2026~~ February 8, 2026
* **Grant application deadline**: ~~February 9, 2026~~ February 10, 2026
* **Grant application notification**: February 16, 2026
* **Workshop dates**: March 26, 2026

**All deadlines are 11:59PM UTC-12 ("anywhere on Earth").**

## Topics of Interest
<ul>
  <li>Computational Social Science and Cultural Analytics</li>
  <li>Dialogue and Interactive Systems</li>
  <li>Discourse and Pragmatics</li>
  <li>Efficient/Low-resource methods in NLP</li>
  <li>Ethics and NLP</li>
  <li>Generation</li>
  <li>Information Retrieval and Text Mining</li>
  <li>Information Extraction</li>
  <li>Interpretability and Model Analysis in NLP</li>
  <li>Language Grounding to Vision, Robotics and Beyond</li>
  <li>Linguistic Theories, Cognitive Modeling and Psycholinguistics</li>
  <li>Machine Learning for NLP</li>
  <li>Machine Translation</li>
  <li>Multilinguality and Language Diversity</li>
  <li>NLP Applications</li>
  <li>Phonology, Morphology, and Word Segmentation</li>
  <li>Question Answering</li>
  <li>Resources and Evaluation</li>
  <li>Semantics: Lexical</li>
  <li>Semantics: Sentence-level Semantics, Textual Inference and other areas</li>
  <li>Sentiment Analysis, Stylistic Analysis and Argument Mining</li>
  <li>Speech and Multimodality</li>
  <li>Summarization</li>
  <li>Syntax: Tagging, Chunking and Parsing</li>
</ul>


## Submission Requirements  
<p>We accept both archival submissions (which will be included in the conference proceedings) and non-archival submissions (which will be presented at the workshop but will not be included in the proceedings). Non-archival papers may be submitted to any venue in the future except for another SRW.</p>
<p>Submissions must follow the restrictions of the main conference.</p>
* Short papers consist of up to four (4) pages of content, plus unlimited references. Upon acceptance, they will be given five (5) content pages in the proceedings.  
* Long papers consist of up to eight (8) pages of content, plus unlimited references. Upon acceptance, they will be given nine (9) content pages in the proceedings.  
* Thesis proposals consist of up to eight (8) pages of content, plus unlimited references. **The title must begin with “Thesis Proposal:”.** Upon acceptance, they will be given nine (9) content pages in the proceedings.  

Paper submissions must use the official ACL style templates. The paper templates are available as an Overleaf template and can also be downloaded directly via [https://aclrollingreview.org/cfp](https://aclrollingreview.org/cfp) under 'Paper Submission Process, Criteria and Templates'. All submissions must be in PDF format.

For anonymity policy, we follow the ARR anonymity policy:
> Under the new policy, submissions will remain anonymous during peer review, but authors are free to post and discuss non-anonymous preprints at any time. To protect anonymity during peer review, ARR will take measures to prioritize reviews by reviewers who are not aware of the author identities. Authors are reminded that widely sharing the work will make it harder to recruit reviewers.

For additional submission instructions, please check the [Author Guidelines]({{ "/calls/srw/guidelines" | relative_url }}) and [Frequently Asked Questions]({{ "/calls/srw/faq" | relative_url }}). Submissions that do not adhere to the author guidelines or ACL policies will be rejected without review.


## Pre-submission Mentorship Program
<p>The SRW offers students the opportunity to receive feedback prior to submitting their work for review. The goal of the pre-submission mentorship program is to improve the quality of writing and presentation of the student’s work, not to critique the work itself. Participation is optional but encouraged. The pre-submission mentorship is not anonymous.</p>
<p>Students wishing to participate in the pre-submission mentorship must submit their paper draft by October 29th, 2025.</p>
<p>Note that even though the mentoring is not done anonymously, the paper needs to be anonymized. We will check for the formality of the paper including formatting before we match it with mentors.</p>
<p>The participants will be assigned a mentor who will review and will provide feedback by December 1, 2025. This mentor will not be the same person who will review the final submission. The feedback will be in the form of guidelines and suggestions to improve the overall writing, which should ideally be incorporated before the actual submission deadline.</p>
You CAN submit a paper at the SRW submission deadline even if you did not participate in the pre-submission mentoring. **If you did submit a draft for pre-submission mentoring, you will need to make a new submission for the final version of the paper. The submission website will have separate tracks for pre-submission mentorship and the final paper submission.**
<p>The submission link for the Pre-submission Mentorship Program is <a href="https://openreview.net/group?id=eacl.org/EACL/2026/SRW_Mentorship">https://openreview.net/group?id=eacl.org/EACL/2026/SRW_Mentorship</a>.</p>


## How to submit
There are two routes for paper submission:  
* **Direct Submission**: Papers should be submitted through OpenReview. Each paper will receive a minimum of three reviews. The review process will follow the ARR review policy. The submission link is [https://openreview.net/group?id=eacl.org/EACL/2026/SRW](https://openreview.net/group?id=eacl.org/EACL/2026/SRW).
* **ACL Rolling Review (ARR) Papers**: Papers which have already been reviewed through the ARR system can be committed to the SRW. These papers will not be re-reviewed. Program Chairs will make acceptance decisions based on the ARR reviews and meta-reviews. ARR papers should be committed through OpenReview. When making a new submission, you will be able to specify the details of the ARR paper that you want to commit, including the OpenReview ID of your paper. The commitment site link is [https://openreview.net/group?id=eacl.org/EACL/2026/SRW_ARR_Commitment](https://openreview.net/group?id=eacl.org/EACL/2026/SRW_ARR_Commitment).  
The deadline for ARR commitment is January 6, 2026, which is shortly after the EACL main confernece notification date (January 3, 2026). Pappers rejected at the EACL main conference can be committed to the SRW if they meet the SRW submission requirements.

We require all authors to have an OpenReview account to submit their papers. If you do not have an OpenReview account, please create one at [https://openreview.net/signup](https://openreview.net/signup) well in advance of the submission deadline. We do not accept late submissions due to account creation issues except for exceptional circumstances.

## Grants
We will offer a limited number of grants to help students cover the costs of attending the SRW. The grants will cover registration fees, and may also include travel and accommodation expenses depending on the availability of funds. Candidates will be assessed based on their application package (details below).

To apply for a grant, please submit your application through [https://forms.gle/mxjQ77JQjewdMMsW9](https://forms.gle/mxjQ77JQjewdMMsW9) by February 10, 2026 (AoE). The notification of grant awards will be sent out by February 16, 2026 (AoE).

**Eligibility criteria**:  
* Applicants must be full-time students.
* Submission requires a completed Application Form with a few questions and a concise one-page CV (resume).
* Travel and accommodations should be arranged independently, regardless of the application outcome.

Authors are encouraged to also apply for other schemes of financial support provided by EACL 2026, including [Diversity & Inclusion Subsidies]({{ '/calls/d-i-subsidies/' | relative_url }}) and [Student Volunteer Grant]({{ '/calls/student-volunteers/' | relative_url }}).

## Contact Information
For more information, please follow us on X/Twitter <a href="https://x.com/eacl_srw">@eacl_srw</a>.  
To contact the organizers of the workshop, please email us at: <a href="mailto:eaclsrw@gmail.com">eaclsrw@gmail.com</a>.


## Student Research Workshop Chairs
- [Selene Baez Santamaria](https://scholar.google.com/citations?user=NVrZT7sAAAAJ&hl=en), University of Zurich
- [Sai Ashish Somayajula](https://scholar.google.com/citations?user=NU1fOrwAAAAJ&hl=en), Oracle
- [Atsuki Yamaguchi](https://scholar.google.com/citations?hl=en&user=BaNSQ0cAAAAJ), University of Sheffield
