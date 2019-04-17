namespace Admin.CommonModel;

using Admin as Admin from './Data-Model';
using Admin.AssignmentModel as AssignmentModel from './Assignment-Model.cds';

type AdminKey		: String(60);
type LanguageCode	: String(2);
type Description	: String(255);
type LongString		: String(1000);