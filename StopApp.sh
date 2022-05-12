pid=$(jps | grep GitHubActionDemo-0.0.1-SNAPSHOT.jar | cut -d " " -f 1)
echo $pid
if [ -z "$pid" ]
then
      echo "JVM not found."
else
      kill -9 $pid
      echo "JVM Stopping!!"
fi
