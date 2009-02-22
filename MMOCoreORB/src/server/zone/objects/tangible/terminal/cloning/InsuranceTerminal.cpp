/*
 *	server/zone/objects/tangible/terminal/cloning/InsuranceTerminal.cpp generated by engine3 IDL compiler 0.55
 */

#include "InsuranceTerminal.h"

#include "InsuranceTerminalImplementation.h"

#include "../../../player/Player.h"

#include "../Terminal.h"

/*
 *	InsuranceTerminalStub
 */

InsuranceTerminal::InsuranceTerminal(unsigned long long objid, float x, float z, float y) : Terminal(DummyConstructorParameter::instance()) {
	_impl = new InsuranceTerminalImplementation(objid, x, z, y);
	_impl->_setStub(this);
}

InsuranceTerminal::InsuranceTerminal(DummyConstructorParameter* param) : Terminal(param) {
}

InsuranceTerminal::~InsuranceTerminal() {
}

int InsuranceTerminal::useObject(Player* player) {
	if (_impl == NULL) {
		if (!deployed)
			throw ObjectNotDeployedException(this);

		DistributedMethod method(this, 6);
		method.addObjectParameter(player);

		return method.executeWithSignedIntReturn();
	} else
		return ((InsuranceTerminalImplementation*) _impl)->useObject(player);
}

int InsuranceTerminal::getCost() {
	if (_impl == NULL) {
		if (!deployed)
			throw ObjectNotDeployedException(this);

		DistributedMethod method(this, 7);

		return method.executeWithSignedIntReturn();
	} else
		return ((InsuranceTerminalImplementation*) _impl)->getCost();
}

/*
 *	InsuranceTerminalAdapter
 */

InsuranceTerminalAdapter::InsuranceTerminalAdapter(InsuranceTerminalImplementation* obj) : TerminalAdapter(obj) {
}

Packet* InsuranceTerminalAdapter::invokeMethod(uint32 methid, DistributedMethod* inv) {
	Packet* resp = new MethodReturnMessage(0);

	switch (methid) {
	case 6:
		resp->insertSignedInt(useObject((Player*) inv->getObjectParameter()));
		break;
	case 7:
		resp->insertSignedInt(getCost());
		break;
	default:
		return NULL;
	}

	return resp;
}

int InsuranceTerminalAdapter::useObject(Player* player) {
	return ((InsuranceTerminalImplementation*) impl)->useObject(player);
}

int InsuranceTerminalAdapter::getCost() {
	return ((InsuranceTerminalImplementation*) impl)->getCost();
}

/*
 *	InsuranceTerminalHelper
 */

InsuranceTerminalHelper* InsuranceTerminalHelper::staticInitializer = InsuranceTerminalHelper::instance();

InsuranceTerminalHelper::InsuranceTerminalHelper() {
	className = "InsuranceTerminal";

	DistributedObjectBroker::instance()->registerClass(className, this);
}

void InsuranceTerminalHelper::finalizeHelper() {
	InsuranceTerminalHelper::finalize();
}

DistributedObject* InsuranceTerminalHelper::instantiateObject() {
	return new InsuranceTerminal(DummyConstructorParameter::instance());
}

DistributedObjectAdapter* InsuranceTerminalHelper::createAdapter(DistributedObjectStub* obj) {
	DistributedObjectAdapter* adapter = new InsuranceTerminalAdapter((InsuranceTerminalImplementation*) obj->_getImplementation());

	obj->_setClassName(className);
	obj->_setClassHelper(this);

	adapter->setStub(obj);

	return adapter;
}

/*
 *	InsuranceTerminalServant
 */

InsuranceTerminalServant::InsuranceTerminalServant(unsigned int objCRC, unsigned long long objid, const UnicodeString& n, const String& tempn, float x, float z, float y, int terminalType) : TerminalImplementation(objCRC, objid, n, tempn, x, z, y, terminalType) {
	_classHelper = InsuranceTerminalHelper::instance();
}

InsuranceTerminalServant::~InsuranceTerminalServant() {
}

void InsuranceTerminalServant::_setStub(DistributedObjectStub* stub) {
	_this = (InsuranceTerminal*) stub;
	TerminalServant::_setStub(stub);
}

DistributedObjectStub* InsuranceTerminalServant::_getStub() {
	return _this;
}

