
export CI_OPT_INFRASTRUCTURE="${CI_OPT_INFRASTRUCTURE:-opensource}";
export CI_OPT_GIT_HOST="${CI_OPT_GIT_HOST:-gitlab.com}";
if [[ -z "${CI_OPT_GIT_PREFIX}" ]]; then export CI_OPT_GIT_PREFIX="https://${CI_OPT_GIT_HOST}"; fi;
export CI_OPT_GPG_KEYNAME="${CI_OPT_GPG_KEYNAME:-59DBF10E}";
export CI_OPT_MVN_DEPLOY_PUBLISH_SEGREGATION="false";
export CI_OPT_ORIGIN_REPO_SLUG="${CI_OPT_ORIGIN_REPO_SLUG:-ci-and-cd/deps-spring-boot}";
export CI_OPT_SONAR_ORGANIZATION="${CI_OPT_SONAR_ORGANIZATION:-home1-oss-github}";

if [[ -n "${APPVEYOR_REPO_BRANCH}" ]]; then export APPVEYOR_ENABLED="${APPVEYOR_ENABLED:-true}"; fi;
if [[ -n "${CI_COMMIT_REF_NAME}" ]]; then export GITLAB_CI="${GITLAB_CI:-true}"; fi;
if [[ -n "${TRAVIS_BRANCH}" ]]; then export TRAVIS_ENABLED="${TRAVIS_ENABLED:-true}"; fi;
if [[ "${CI_OPT_FAST}" != "true" ]]; then export CI_OPT_MAVEN_EFFECTIVE_POM="${CI_OPT_MAVEN_EFFECTIVE_POM:-false}"; fi;

if [[ -z ${CI_OPT_GITHUB_SITE_PUBLISH} ]]; then
  if [[ "${APPVEYOR_ENABLED}" == "true" ]]; then if [[ "${APPVEYOR_REPO_BRANCH}" =~ ^release/.+ ]] || [[ "${APPVEYOR_REPO_BRANCH}" =~ ^support/.+ ]]; then export CI_OPT_GITHUB_SITE_PUBLISH="true"; else export CI_OPT_GITHUB_SITE_PUBLISH="false"; fi; fi;
  if [[ "${GITLAB_CI}" == "true" ]]; then if [[ "${CI_COMMIT_REF_NAME}" =~ ^release/.+ ]] || [[ "${CI_COMMIT_REF_NAME}" =~ ^support/.+ ]]; then export CI_OPT_GITHUB_SITE_PUBLISH="true"; else export CI_OPT_GITHUB_SITE_PUBLISH="false"; fi; fi;
  if [[ "${TRAVIS_ENABLED}" == "true" ]]; then if [[ "${TRAVIS_BRANCH}" =~ ^release/.+ ]] || [[ "${TRAVIS_BRANCH}" =~ ^support/.+ ]]; then export CI_OPT_GITHUB_SITE_PUBLISH="true"; else export CI_OPT_GITHUB_SITE_PUBLISH="false"; fi; fi;
fi;
if [[ "${CI_OPT_GITHUB_SITE_PUBLISH}" == "true" ]]; then
  if [[ "${APPVEYOR_ENABLED}" == "true" ]]; then export CI_OPT_GITHUB_GLOBAL_REPOSITORYOWNER="$(echo ${APPVEYOR_REPO_NAME} | awk -F'/' '{print $1}')"; fi;
  if [[ "${GITLAB_CI}" == "true" ]]; then export CI_OPT_GITHUB_GLOBAL_REPOSITORYOWNER="$(echo ${CI_PROJECT_PATH} | awk -F'/' '{print $1}')"; fi;
  if [[ "${TRAVIS_ENABLED}" == "true" ]]; then export CI_OPT_GITHUB_GLOBAL_REPOSITORYOWNER="$(echo ${TRAVIS_REPO_SLUG} | awk -F'/' '{print $1}')"; fi;
  export CI_OPT_SITE_PATH_PREFIX="${CI_OPT_GITHUB_GLOBAL_REPOSITORYOWNER}";
else
  if [[ "${APPVEYOR_ENABLED}" == "true" ]]; then export CI_OPT_SITE_PATH_PREFIX="${APPVEYOR_REPO_NAME}"; fi;
  if [[ "${GITLAB_CI}" == "true" ]]; then export CI_OPT_SITE_PATH_PREFIX="${CI_PROJECT_PATH}"; fi;
  if [[ "${TRAVIS_ENABLED}" == "true" ]]; then export CI_OPT_SITE_PATH_PREFIX="${TRAVIS_REPO_SLUG}"; fi;
fi;

if [[ -z "${CI_OPT_MAVEN_BUILD_OPTS_REPO}" ]]; then export CI_OPT_MAVEN_BUILD_OPTS_REPO="${CI_OPT_GIT_PREFIX}/ci-and-cd/maven-build-opts-${CI_OPT_INFRASTRUCTURE:-opensource}"; fi;
export CI_OPT_MAVEN_BUILD_OPTS_REPO_REF="${CI_OPT_MAVEN_BUILD_OPTS_REPO_REF:-master}";
if [[ "${APPVEYOR_ENABLED}" == "true" ]]; then export SETTINGS_GLOBAL_XML="${SETTINGS_GLOBAL_XML:-/home/appveyor/.m2/wrapper/dists/apache-maven-3.6.1-bin/38pn40mp89t5c94bjdbeod370m/apache-maven-3.6.1/conf/settings.xml}"; fi;
#if [[ "${GITLAB_CI}" == "true" ]]; then export SETTINGS_GLOBAL_XML="${SETTINGS_GLOBAL_XML:-/var/lib/gitlab-runner/.m2/wrapper/dists/apache-maven-3.6.1-bin/38pn40mp89t5c94bjdbeod370m/apache-maven-3.6.1/conf/settings.xml}"; fi;
if [[ "${GITLAB_CI}" == "true" ]]; then export SETTINGS_GLOBAL_XML="${SETTINGS_GLOBAL_XML:-/tmp/settings-global-${CI_COMMIT_SHA}.xml}"; fi;
if [[ "${TRAVIS_ENABLED}" == "true" ]]; then export SETTINGS_GLOBAL_XML="${SETTINGS_GLOBAL_XML:-/home/travis/.m2/wrapper/dists/apache-maven-3.6.1-bin/38pn40mp89t5c94bjdbeod370m/apache-maven-3.6.1/conf/settings.xml}"; fi;
export SETTINGS_GLOBAL_XML_URL="${CI_OPT_MAVEN_BUILD_OPTS_REPO}/raw/${CI_OPT_MAVEN_BUILD_OPTS_REPO_REF}/src/main/maven/settings-global.xml";
