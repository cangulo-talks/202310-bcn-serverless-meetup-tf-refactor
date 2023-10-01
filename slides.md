---
marp: true
theme: uncover
paginate: true
header: Refactoring hundred of environments with terraform - Carlos Angulo
footer: Serverless Barcelona Meetup
---

<!--
_class: invert
-->

# **Refactoring hundred of environments with terraform**

1. **Introduction**
2. **Demo with Terraform**
3. **Is it worth it?**
4. **LocalStack PRO**

![bg opacity:25%](https://secure.meetupstatic.com/photos/event/c/1/9/4/600_478429556.jpeg)

---


# **About me**

- I am Carlos Angulo
- I work at [Ohpen](https://www.ohpen.com)
- I have more than 7 years of experience. Last years as a Platform Engineer
- You can follow me on LinkedIn or GitHub(cangulo)

![bg right:30% w:60% ](assets/imgs/ohpen-logo.jpg)
![bg right:30% w:60% vertical](assets/imgs/linkedin-qr-code.jpeg)

---

# **Goal**

We want to refactor and simplify a terraform solution. _How would you tackle this ? 🤔_

<!-- TODO: add screenshot of terraform code -->

---

# **Problem**

* We edit the code and we perform a terraform plan to ensure our changes do what we expect. 📜
* If we have 3 environments, we check 3 terraform plans. But, what if we have hundreds of environments? 💯

<!-- TODO: add screenshot of tf plans per stage -->

---

# **What do we need?**

- We need to aggregate all the environments changes so it is easy for us to know how our changes affect them

<!-- TODO: add screenshot of tf plans summary -->

---

# **Our solution**

- We need to aggregate all the environments changes so it is easy for us to know how our changes affect them
- We end up creating a open source GH action for it:
  - [terraform-plan-summarize-gh-action](https://github.com/ohpensource/terraform-plan-summarize-gh-action)

<!-- TODO: add screenshot of markdown table with all environment summarized -->


---

# **Questions?**

