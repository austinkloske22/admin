namespace Admin.DropdownValueModel;

using Admin as Admin from './Data-Model';
using Admin.CommonModel as CommonModel from './Common-Model.cds';
using Admin.TextDetailModel as TextDetailModel from './TextDetail-Model';

entity ChargeType {
	key chargeTypeID		: CommonModel.AdminKey;
	TextDetails				: Composition of many TextDetailModel.ChargeType on TextDetails.chargeTypeID = $self.chargeTypeID;
} 

entity FreightCostCode {
	freightCostCodeID		: CommonModel.Description;
	TextDetails				: Composition of many TextDetailModel.FreightCostCode on TextDetails.freightCostCodeID = $self.freightCostCodeID;
}

entity DaysInTransitType {
	daysInTransitTypeID		: CommonModel.AdminKey;
	TextDetails				: Composition of many TextDetailModel.DaysInTransitType on TextDetails.daysInTransitTypeID = $self.daysInTransitTypeID;
}

entity CommitmentTimeType {
	commitmentTimeTypeID	: CommonModel.AdminKey;
	TextDetails				: Composition of many TextDetailModel.CommitmentTimeType  on TextDetails.commitmentTimeTypeID = $self.commitmentTimeTypeID;
}
