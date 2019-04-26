#include "pbdobject.cuh"

namespace LuHu {

enum constraints{
    DISTANCE,
    BENDING,
    DISTANCE_AND_BENDING
};

class solver /// main class for simulation
{
public:

    /// @brief constructor
    /// @param _dampening used for damping velocities
    /// @param _gravity, sets gravity direction and value during simulation

    solver(float _dampening, glm::vec3 _gravity);

    /// @brief get and setter functions

    glm::vec3 getGrav() const;
    float getDamp() const;
    void setGrav(glm::vec3 _grav);
    void setDamp(float _damp);

    /// @brief addPBDobject, adds a PBDobject to the simulation

    uint addPBDobject(PBDobject *_PBDobjectPtr);

    /// @brief rmPBDobject, removes a PBDobject to the simulation

    bool rmPBDobject(PBDobject *_PBDobjectPtr);
    bool rmPBDobject(uint index);


    bool setPBDobject(uint index, PBDobject * _PBDobjectPtr);
    /// @brief getObjects returns a vector of shared pointers to PBDobjects

    std::vector<PBDobject *> getObjects() const;

    bool InitGPUData();

    /// @brief RunSolver, main solver loop that runs based on time step, dt

    void RunSolver(float dt, uint iterations);


private:

    std::vector<PBDobject *> m_PBDObjects;

    float m_dampening;
    glm::vec3 m_gravity;
};

} //end of namespace
