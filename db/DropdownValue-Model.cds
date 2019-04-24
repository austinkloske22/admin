namespace Admin.DropdownValue;

using Admin.Common as Common from './Common-Model.cds';
using Admin.TextDetail as TextDetail from './TextDetail-Model';

entity ErrorMessage {
	key errorMessageID	: Common.AdminKey;
	TextDetails			: Composition of many TextDetail.ErrorMessage on TextDetails.errorMessageID = $self.errorMessageID;
} 

entity ChargeType {
	key chargeTypeID		: Common.AdminKey;
	TextDetails				: Composition of many TextDetail.ChargeType on TextDetails.chargeTypeID = $self.chargeTypeID;
} 

entity FreightCostCode {
	freightCostCodeID		: Common.Description;
	TextDetails				: Composition of many TextDetail.FreightCostCode on TextDetails.freightCostCodeID = $self.freightCostCodeID;
}

entity DaysInTransitType {
	daysInTransitTypeID		: Common.AdminKey;
	TextDetails				: Composition of many TextDetail.DaysInTransitType on TextDetails.daysInTransitTypeID = $self.daysInTransitTypeID;
}

entity CommitmentTimeType {
	commitmentTimeTypeID	: Common.AdminKey;
	TextDetails				: Composition of many TextDetail.CommitmentTimeType  on TextDetails.commitmentTimeTypeID = $self.commitmentTimeTypeID;
}
