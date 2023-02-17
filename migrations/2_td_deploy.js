var ExerciceSolution = artifacts.require("ExerciceSolution.sol");

module.exports = (deployer, network, accounts) => {
    deployer.then(async () => {
        await deployExerciceSolution(deployer, network, accounts); 
        await deployRecap(deployer, network, accounts)
    });
};

async function deployExerciceSolution(deployer, network, accounts) {
	ExerciceSolution = await ExerciceSolution.new()
}

async function deployRecap(deployer, network, accounts) {
	console.log("ExerciceSolution " + ExerciceSolution.address)
}