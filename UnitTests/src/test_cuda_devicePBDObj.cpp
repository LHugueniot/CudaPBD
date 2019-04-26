#include "gtest/gtest.h"
#include "solver.cuh"

TEST(devicePBDObj1, constr)
{
    LuHu::solver TestSolver(1.0f, glm::vec3(0,-0.08,0));

    LuHu::PBDobject * TestObj= new LuHu::PBDobject;

    std::string modelName="deCube.obj";

    EXPECT_TRUE(TestObj->Initialize(modelName,0,glm::vec3(0),1.0f));

    EXPECT_TRUE(TestSolver.addPBDobject(TestObj));


//    for(uint Tstep=0;Tstep<20; Tstep++)
//    {
//        TestSolver.RunSolver(5,10);
//    }
}
