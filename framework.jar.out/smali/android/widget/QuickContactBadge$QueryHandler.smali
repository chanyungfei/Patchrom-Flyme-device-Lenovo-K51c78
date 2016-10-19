.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 339
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    .line 340
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 341
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 16
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 345
    const/4 v10, 0x0

    .line 346
    .local v10, "lookupUri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 347
    .local v3, "createUri":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 348
    .local v11, "trigger":Z
    if-eqz p2, :cond_3

    check-cast p2, Landroid/os/Bundle;

    .end local p2    # "cookie":Ljava/lang/Object;
    move-object/from16 v7, p2

    .line 350
    .local v7, "extras":Landroid/os/Bundle;
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 381
    :cond_0
    :goto_1
    if-eqz p3, :cond_1

    .line 382
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 386
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    # setter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v12, v10}, Landroid/widget/QuickContactBadge;->access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    .line 387
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    # invokes: Landroid/widget/QuickContactBadge;->onContactUriChanged()V
    invoke-static {v12}, Landroid/widget/QuickContactBadge;->access$100(Landroid/widget/QuickContactBadge;)V

    .line 389
    if-eqz v11, :cond_5

    if-eqz v10, :cond_5

    .line 391
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v12}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v15, v15, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v12, v13, v10, v14, v15}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 409
    :cond_2
    :goto_2
    return-void

    .line 348
    .end local v7    # "extras":Landroid/os/Bundle;
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_3
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 352
    .end local p2    # "cookie":Ljava/lang/Object;
    .restart local v7    # "extras":Landroid/os/Bundle;
    :pswitch_0
    const/4 v11, 0x1

    .line 353
    :try_start_0
    const-string/jumbo v12, "tel"

    const-string/jumbo v13, "uri_content"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 357
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 358
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 359
    .local v4, "contactId":J
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 360
    .local v9, "lookupKey":Ljava/lang/String;
    invoke-static {v4, v5, v9}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 361
    goto :goto_1

    .line 366
    .end local v4    # "contactId":J
    .end local v9    # "lookupKey":Ljava/lang/String;
    :pswitch_2
    const/4 v11, 0x1

    .line 367
    const-string/jumbo v12, "mailto"

    const-string/jumbo v13, "uri_content"

    invoke-virtual {v7, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 372
    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 373
    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 374
    .restart local v4    # "contactId":J
    const/4 v12, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 375
    .restart local v9    # "lookupKey":Ljava/lang/String;
    invoke-static {v4, v5, v9}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    goto/16 :goto_1

    .line 381
    .end local v4    # "contactId":J
    .end local v9    # "lookupKey":Ljava/lang/String;
    :catchall_0
    move-exception v12

    if-eqz p3, :cond_4

    .line 382
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v12

    .line 393
    :cond_5
    if-eqz v3, :cond_2

    .line 395
    new-instance v8, Landroid/content/Intent;

    const-string v12, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v8, v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 396
    .local v8, "intent":Landroid/content/Intent;
    if-eqz v7, :cond_6

    .line 398
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 399
    .local v2, "bundle":Landroid/os/Bundle;
    const-string/jumbo v12, "uri_content"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v8, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 404
    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v12}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 405
    :catch_0
    move-exception v6

    .line 406
    .local v6, "e":Landroid/content/ActivityNotFoundException;
    const-string v12, "QuickContactBadge"

    const-string v13, "Activity not exist"

    invoke-static {v12, v13}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 350
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
