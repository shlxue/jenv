if [ "$1" = "mvnd" ] && [ -n "$JENV_OPTIONS" ]; then
  if [ -z "$MVND_HOME" ]; then
    exportVariable MVND_HOME
  else
    echo "MVND_HOME is set and not overridden by jenv"
  fi
fi
if [ "$1" = "mvn" -o "$1" = "mvnDebug" ]; then
  if [ -n "$JENV_OPTIONS" ]; then
    if [ -z "$MAVEN_OPTS" ]; then
      exportVariable MAVEN_OPTS "$JENV_OPTIONS"
    else
      echo "MAVEN_OPTS is set and not overridden by jenv"
    fi
    unset JENV_OPTIONS
  fi
fi
