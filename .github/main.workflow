workflow "Test" {
  on = "push"
  resolves = ["Do nothing 3", "Do nothing 2"]
}

action "Do nothing" {
  uses = "actions/npm@c555744"
}

action "Do nothing 3" {
  uses = "actions/npm@c555744"
  needs = ["Do nothing", "Do nothing 2"]
}

action "Do nothing 2" {
  uses = "actions/npm@c555744"
}
