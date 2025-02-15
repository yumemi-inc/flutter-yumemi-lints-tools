# Branch Strategy

## Branches

| Branch | Description |
| - | - |
| main | Production branch. |
| GH-{issue-number} | Used to work on an issue. |
| feature/{name} | Used to work on feature development other than issues. |
| improve/{name} | Used to work on improvements other than issues. |
| fix/{name} | Used to work on bug fixes other than issues. |
| release/{tool-name}/{version} | Release branch. When merged into the main branch, a {tool-name}-{version} tag is automatically pushed. |
| update-contributors | Exclusively occupied by a GitHub workflow dedicated to updating the Contributors section in the README. |
| dependabot/{target} | Exclusively occupied by Dependabot. |

## Example

```mermaid
gitGraph
    commit
    branch "GH-1" order: 1
    commit
    checkout "main"
    branch "dependabot/github_actions/peter-evans/create-pull-request-6" order: 2
    commit
    checkout "main"
    merge "dependabot/github_actions/peter-evans/create-pull-request-6"
    checkout "GH-1"
    commit
    checkout "main"
    merge "GH-1"
    branch "GH-2" order: 3
    commit
    commit
    checkout "main"
    branch "improve/lint-rules" order: 4
    commit
    checkout "main"
    merge "improve/lint-rules"
    checkout "GH-2"
    commit
    commit
    checkout "main"
    merge "GH-2"
    branch "update-contributors" order: 5
    commit
    checkout "main"
    merge "update-contributors"
    branch "release/tool-name/2.0.0" order: 6
    commit id: "Update version"
    commit id: "Update changelog"
    checkout "main"
    merge "release/tool-name/2.0.0" tag: "2.0.0"
```
