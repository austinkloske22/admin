package  com.skipum.handlers.catalogservice; 

import com.sap.cloud.sdk.service.prov.api.EntityData;
import com.sap.cloud.sdk.service.prov.api.ExtensionHelper;
import com.sap.cloud.sdk.service.prov.api.MessageContainer;
import com.sap.cloud.sdk.service.prov.api.annotations.BeforeCreate;
import com.sap.cloud.sdk.service.prov.api.exits.BeforeCreateResponse;
import com.sap.cloud.sdk.service.prov.api.request.CreateRequest;
import com.sap.cloud.sdk.service.prov.api.response.ErrorResponse;
import com.sap.gateway.core.api.enums.HttpStatus;
import com.skipum.entities.CarrierMasters;
import com.skipum.entities.CatalogService;

/***
 * Handler class for persisted entity "CarrierMasters" of service "CatalogService".
 * This handler registers custom handlers for before / after operation hooks.
 * For more information, see: https://help.sap.com/viewer/65de2977205c403bbc107264b8eccf4b/Cloud/en-US/94c7b69cc4584a1a9dfd9cb2da295d5e.html
 */
public class CarrierMastersHooksHandler {

//	@BeforeRead(entity = "CarrierMasters", serviceName = "CatalogService")
//	public BeforeReadResponse beforeReadCarrierMasters(ReadRequest req, ExtensionHelper helper) {
//		//TODO: add your custom logic / validations here...
//
//		return BeforeReadResponse.setSuccess().response(); //use this API if validation checks are successful.
//		//return BeforeReadResponse.setError(ErrorResponse.getBuilder().setMessage("You are not authorized to read this item").response()); //use this API if your validation checks fail
//	}

//	@AfterRead(entity = "CarrierMasters", serviceName = "CatalogService")
//	public ReadResponse afterReadCarrierMasters(ReadRequest req, ReadResponseAccessor res, ExtensionHelper helper) {
//		EntityData data = res.getEntityData();
//		//TODO: add your custom logic / validations here...
//
//		return res.getOriginalResponse(); //use this API if no change is required and the original response can be returned as output.
//		//return ReadResponse.setSuccess().setData(data).response(); //use this API if the payload is modified.
//		//return ReadResponse.setError(ErrorResponse.getBuilder().setMessage("Read Operation Failed").response()); //use this API if should return error response.
//	}

//	@BeforeQuery(entity = "CarrierMasters", serviceName = "CatalogService")
//	public BeforeQueryResponse beforeQueryCarrierMasters(QueryRequest req, ExtensionHelper helper) {
//		//TODO: add your custom logic / validations here...
//
//		return BeforeQueryResponse.setSuccess().response(); //use this API if validation checks are successful.
//		//return BeforeQueryResponse.setError(ErrorResponse.getBuilder().setMessage("You are not authorized to query this entity").response()); //use this API if any validation checks fail.
//	}

//	@AfterQuery(entity = "CarrierMasters", serviceName = "CatalogService")
//	public QueryResponse afterQueryCarrierMasters(QueryRequest req, QueryResponseAccessor res, ExtensionHelper helper) {
//		List<EntityData> dataList = res.getEntityDataList(); //original list
//		//TODO: add your custom logic / validations here...
//
//		return res.getOriginalResponse(); //use this API if no change is required and the original response can be returned as output.
//		//return QueryResponse.setSuccess().setData(dataList).response(); //use this API if the payload is modified.
//		//return QueryResponse.setError(ErrorResponse.getBuilder().setMessage("Query Operation Failed").response()); //use this API if should return error response.
//	}

	@BeforeCreate(entity = CarrierMasters.NAME, serviceName = CatalogService.NAME)
	public BeforeCreateResponse beforeCreate(CreateRequest req, ExtensionHelper eh) {
        boolean error = validate(req.getData(), req.getMessageContainer());

        if (error) { 
            return BeforeCreateResponse.setError(ErrorResponse.getBuilder()
            	.addContainerMessages()
            	.setStatusCode(HttpStatus.CONFLICT.getStatusCode())
            	.response());
        } else {
            return BeforeCreateResponse.setSuccess().response();
        }
    }

	//@AfterCreate(entity = "CarrierMasters", serviceName = "CatalogService")
	//public CreateResponse afterCreateCarrierMasters(CreateRequest req, CreateResponseAccessor res, ExtensionHelper helper) {
		//TODO: add your custom logic / validations here...

		//String errorCode;
		//errorCode = "CDSRuntimeException.CONFLICT";
		
		//return res.getOriginalResponse(); //use this API if operation succeeded and payload has not been modified.
		//return CreateResponse.setError(ErrorResponse.getBuilder().setMessage("Austins Error Response").setErrorCode(errorCode).response()); //use this API if should return error response.
	//}

//	@BeforeUpdate(entity = "CarrierMasters", serviceName = "CatalogService")
//	public BeforeUpdateResponse beforeUpdateCarrierMasters(UpdateRequest req, ExtensionHelper helper) {
//		EntityData data = req.getData();
//		//TODO: add your custom logic / validations here...
//
//		return BeforeUpdateResponse.setSuccess().response(); //use this API if the payload has not been modified.
//		//return BeforeUpdateResponse.setSuccess().setEntityData(data).response(); //use this API if the payload is modified.
//		//return BeforeUpdateResponse.setError(ErrorResponse.getBuilder().setMessage("You are not authorized to update this item.").response()); //use this API if any validation checks fail.
//	}

//	@AfterUpdate(entity = "CarrierMasters", serviceName = "CatalogService")
//	public UpdateResponse afterUpdateCarrierMasters(UpdateRequest req, UpdateResponseAccessor res, ExtensionHelper helper) {
//		//TODO: add your custom logic / validations here...
//
//		return res.getOriginalResponse(); //use this API if operation succeeded and payload has not been modified.
//		//return UpdateResponse.setError(ErrorResponse.getBuilder().setMessage("Update Operation Failed").response()); //use this API if should return error response.
//	}

//	@BeforeDelete(entity = "CarrierMasters", serviceName = "CatalogService")
//	public BeforeDeleteResponse beforeDeleteCarrierMasters(DeleteRequest req, ExtensionHelper helper) {
//		//TODO: add your custom logic / validations here...
//
//		return BeforeDeleteResponse.setSuccess().response(); //use this API if validation checks are successful.
//		//return BeforeDeleteResponse.setError(ErrorResponse.getBuilder().setMessage("You are not authorized to delete this item.").response()); //use this API if your validation checks fail
//	}

//	@AfterDelete(entity = "CarrierMasters", serviceName = "CatalogService")
//	public DeleteResponse afterDeleteCarrierMasters(DeleteRequest req, DeleteResponseAccessor res, ExtensionHelper helper) {
//		//TODO: add your custom logic / validations here...
//
//		return res.getOriginalResponse(); //use this API if operation succeeded and payload has not been modified.
//		//return DeleteResponse.setError(ErrorResponse.getBuilder().setMessage("Delete Operation Failed").response()); //use this API if should return error response.
//	}
	protected boolean validate(EntityData data, MessageContainer messageContainer) {
        boolean error = false;
        
        try {
            String ID = data.getElementValue(CarrierMasters.ELEMENT_ID).toString();
            if (ID.equalsIgnoreCase("FORBIDDEN")) {
                messageContainer.addErrorMessage("CarrierMastersValidation", "ForbiddenID");
                
                error = true;
            }

        } catch (NullPointerException e) {
            // Do nothing, as it is not relevant
            error = false;
        }

        return error;
    }

}