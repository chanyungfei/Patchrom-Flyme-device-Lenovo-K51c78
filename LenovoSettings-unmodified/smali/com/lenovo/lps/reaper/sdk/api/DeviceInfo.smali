.class public Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "All"

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->j:Ljava/lang/String;

    return-void
.end method

.method private setApplicationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationToken"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->i:Ljava/lang/String;

    return-void
.end method

.method private setChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->j:Ljava/lang/String;

    return-void
.end method

.method private setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->b:Ljava/lang/String;

    return-void
.end method

.method private setDeviceIdType(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceIdType"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->c:Ljava/lang/String;

    return-void
.end method

.method private setDeviceModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceModel"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->e:Ljava/lang/String;

    return-void
.end method

.method private setImsi(Ljava/lang/String;)V
    .locals 0
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->h:Ljava/lang/String;

    return-void
.end method

.method private setManufacture(Ljava/lang/String;)V
    .locals 0
    .param p1, "manufacture"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->g:Ljava/lang/String;

    return-void
.end method

.method private setOsVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "osVersion"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->d:Ljava/lang/String;

    return-void
.end method

.method private setResolution(Ljava/lang/String;)V
    .locals 0
    .param p1, "resolution"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApplicationToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceIdAssignedByServer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceIdType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacture()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method public resetAppInfo(Lcom/lenovo/lps/reaper/sdk/b/a;)V
    .locals 1
    .param p1, "appConfig"    # Lcom/lenovo/lps/reaper/sdk/b/a;

    .prologue
    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/b/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->setApplicationToken(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/b/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->setChannel(Ljava/lang/String;)V

    return-void
.end method

.method public resetDeviceInfo(Lcom/lenovo/lps/reaper/sdk/b/b;)V
    .locals 1
    .param p1, "deviceConfig"    # Lcom/lenovo/lps/reaper/sdk/b/b;

    .prologue
    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/b/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->setDeviceId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/b/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->setDeviceIdType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/b/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->setOsVersion(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/b/b;->k()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->setDeviceModel(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->setResolution(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/b/b;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->setManufacture(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/b/b;->n()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->setImsi(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/b/b;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->setDeviceIdAssignedByServer(Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceIdAssignedByServer(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceIdAssignedByServer"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->a:Ljava/lang/String;

    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\'deviceId\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'deviceIdType\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'osVersion\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'deviceModel\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'resolution\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'manufacture\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'imsi\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'applicationToken\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'channel\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'deviceIdAssignedByServer\':\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceAndAppInfo [deviceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceIdType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", osVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", manufacture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imsi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", applicationToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deviceIdAssignedByServer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/api/DeviceInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
