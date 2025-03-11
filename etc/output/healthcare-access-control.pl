:- op(1200, xfx, :+).

answer('urn:example:userPermission'(alice, view_patient_records, patient1)).
answer('urn:example:userPermission'(alice, edit_patient_records, patient1)).
answer('urn:example:userPermission'(alice, access_medications, patient1)).
answer('urn:example:userPermission'(bob, view_patient_records, patient2)).
answer(\+'urn:example:userPermission'([alice, 7], edit_patient_records, patient1)).
answer('urn:example:userPermission'(alice, view_patient_records, patient3)).
answer('urn:example:userPermission'(bob, view_patient_records, patient3)).
answer(\+'urn:example:userPermission'(dave, view_patient_records, patient1)).

step((user_role(alice, doctor), role_permission(doctor, view_patient_records), assigned_patient(alice, patient1)), user_permission(alice, view_patient_records, patient1)).
step((user_role(alice, doctor), role_permission(doctor, view_patient_records), assigned_patient(alice, patient2)), user_permission(alice, view_patient_records, patient2)).
step((user_role(bob, nurse), role_permission(nurse, view_patient_records), assigned_patient(bob, patient2)), user_permission(bob, view_patient_records, patient2)).
step((user_role(alice, doctor), role_permission(doctor, view_patient_records), emergency(patient3)), user_permission(alice, view_patient_records, patient3)).
step((user_role(bob, nurse), role_permission(nurse, view_patient_records), emergency(patient3)), user_permission(bob, view_patient_records, patient3)).
step((user_role(alice, doctor), role_permission(doctor, edit_patient_records), \+denied(alice, edit_patient_records), assigned_patient(alice, patient1)), user_permission(alice, edit_patient_records, patient1)).
step((user_role(alice, doctor), role_permission(doctor, edit_patient_records), \+denied(alice, edit_patient_records), assigned_patient(alice, patient2)), user_permission(alice, edit_patient_records, patient2)).
step((user_role(alice, doctor), role_permission(doctor, access_medications), \+denied(alice, access_medications), assigned_patient(alice, patient1)), user_permission(alice, access_medications, patient1)).
step((user_role(alice, doctor), role_permission(doctor, access_medications), \+denied(alice, access_medications), assigned_patient(alice, patient2)), user_permission(alice, access_medications, patient2)).
step((user_role(bob, nurse), role_permission(nurse, access_medications), \+denied(bob, access_medications), assigned_patient(bob, patient2)), user_permission(bob, access_medications, patient2)).
