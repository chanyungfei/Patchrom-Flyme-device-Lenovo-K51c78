.class Lcom/flyme/deviceoriginalsettings/CryptKeeper$ValidationTask;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ValidationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field state:I

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$ValidationTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/CryptKeeper;Lcom/flyme/deviceoriginalsettings/CryptKeeper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/CryptKeeper;
    .param p2, "x1"    # Lcom/flyme/deviceoriginalsettings/CryptKeeper$1;

    .prologue
    .line 249
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper$ValidationTask;-><init>(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x1

    .line 254
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$ValidationTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # invokes: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$100(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 256
    .local v1, "service":Landroid/os/storage/IMountService;
    :try_start_0
    const-string v2, "CryptKeeper"

    const-string v4, "Validating encryption state."

    invoke-static {v2, v4}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v2

    iput v2, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$ValidationTask;->state:I

    .line 258
    iget v2, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$ValidationTask;->state:I

    if-ne v2, v3, :cond_0

    .line 259
    const-string v2, "CryptKeeper"

    const-string v4, "Unexpectedly in CryptKeeper even though there is no encryption."

    invoke-static {v2, v4}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 265
    :goto_0
    return-object v2

    .line 262
    :cond_0
    iget v2, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$ValidationTask;->state:I

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CryptKeeper"

    const-string v4, "Unable to get encryption state properly"

    invoke-static {v2, v4}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 249
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper$ValidationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x1

    .line 271
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$ValidationTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # setter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mValidationComplete:Z
    invoke-static {v1, v0}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$802(Lcom/flyme/deviceoriginalsettings/CryptKeeper;Z)Z

    .line 272
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 273
    const-string v1, "CryptKeeper"

    const-string v2, "Incomplete, or corrupted encryption detected. Prompting user to wipe."

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$ValidationTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # setter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mEncryptionGoneBad:Z
    invoke-static {v1, v0}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$902(Lcom/flyme/deviceoriginalsettings/CryptKeeper;Z)Z

    .line 275
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$ValidationTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    iget v2, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$ValidationTask;->state:I

    const/4 v3, -0x4

    if-ne v2, v3, :cond_0

    :goto_0
    # setter for: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->mCorrupt:Z
    invoke-static {v1, v0}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$1002(Lcom/flyme/deviceoriginalsettings/CryptKeeper;Z)Z

    .line 279
    :goto_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CryptKeeper$ValidationTask;->this$0:Lcom/flyme/deviceoriginalsettings/CryptKeeper;

    # invokes: Lcom/flyme/deviceoriginalsettings/CryptKeeper;->setupUi()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/CryptKeeper;->access$1100(Lcom/flyme/deviceoriginalsettings/CryptKeeper;)V

    .line 280
    return-void

    .line 275
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 277
    :cond_1
    const-string v0, "CryptKeeper"

    const-string v1, "Encryption state validated. Proceeding to configure UI"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 249
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/CryptKeeper$ValidationTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
