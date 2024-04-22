package performance

import com.intuit.karate.gatling.PreDef._
import io.gatling.core.Predef._

import scala.concurrent.duration._
import scala.language.postfixOps

class PerfTest extends Simulation {

  val protocol = karateProtocol()

//  protocol.nameResolver = (req, ctx) => req.getHeader("karate-name")
//  protocol.runner.karateEnv("perf")

  val create = scenario("create and delete article").exec(karateFeature("classpath:performance/data/createArticle.feature"))

  setUp(
    create.inject(
      atOnceUsers(1)).protocols(protocol)
  )

}