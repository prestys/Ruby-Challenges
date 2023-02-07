# Ruby Challenges

## Learning objectives
- practise ruby syntax
- run rspec files and interpret the error message to improve your code

(peer review sections) 
- sharing work on github
- understanding and evaluating code you haven't written
- communicating through the github pull request review procedure

## Setting up on your own computer

You will need to make a clone of this repo, rather than fork it. This is because you will need to add a peer as a collaborator -- and you only have permission to do that on repos that are yours from the start.

In a terminal, in your projects directory, run the following command: (it will make a new directory to copy the repo into).

```bash
git clone https://github.com/makersacademy/ruby_challenges.git
```

(You can find that kind of address for a repo in the green `code` button near the top of the homepage of a repo)

Then change into that directory:


```bash
cd ruby_challenges
```

You now have a local copy of this Makers repo. It is still linked to the original Makers repo through the address stored in the remote called `origin`. You can see that by running:

```bash
git remote -v

origin	https://github.com/makersacademy/ruby_challenges.git (fetch)
origin	https://github.com/makersacademy/ruby_challenges.git (push)
```

We need to get rid of these:

```bash 
git remote remove origin
```

Now the previous command will list nothing.

Go to your github homepage and create a new repo. Keep it blank -- it only needs a name and an owner. 

Copy its address. And then go back to the terminal and link your clone to your new repo. The command will look like this, but will need the address you copied instead of the angled brackets and their contents.

```
git remote add origin <your repo address>
```

Now the local repo on your computer should be linked to a remote repo (that you also own) on github. Check with:

```bash
git remote -v 
```

### Push your initial setup to your remote repo

```bash
git push -u origin main
```

For some people, this may hang after it gets to the `total` line. Give it a minute or two. If there is no progress, you may have to set things up so that large amounts of data can be uploaded.

```bash
git config http.postBuffer 157286400
```

And then try pushing again.

After it completes, go back to github and refresh that page. You should see a copy of this repo!

## Working in branches

You should create a branch to make changes to your repo. That way, if you make a mistake that breaks a project, you can always go back to the last good version.

You will also need to make a branch for your peer review task -- see later instructions for that part.

Let's make a branch to prepare for working on the chapter 1 drills. The following both makes the branch and switches to it.

```bash
git checkout -b chapter1-drills
```

Once you have made some changes, staged and committed them: see if you can adapt the `git push` command above to send that commit to a branch called `chapter1-drills` on your remote repo. Remember: that remote repo is called `origin`

## Doing the drills

There are instructions in the [chapter 1 folder](./ruby_chapter_1_challenges/README.md)



<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_challenges&prefill_File=README.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_challenges&prefill_File=README.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_challenges&prefill_File=README.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_challenges&prefill_File=README.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fruby_challenges&prefill_File=README.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
