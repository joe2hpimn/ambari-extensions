import os
from library import hawq
from resource_management import *

class Client(Script):
    def install(self, env):
        import params

        hawq.add_psql_environment_variables(params.hawq_user)

        # Create hadoop log directory for hawq user
        # This allows hdfs commands to be run as hawq user without errors
        Directory(
            os.path.join('/var/log/hadoop', params.hawq_user),
            recursive=True,
            action="create",
            owner=params.hawq_user
        )

    def configure(self, env):
        pass

    def status(self, env):
        pass

if __name__ == "__main__":
    Client().execute()
