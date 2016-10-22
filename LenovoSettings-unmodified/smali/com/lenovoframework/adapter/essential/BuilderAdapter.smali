.class public Lcom/lenovoframework/adapter/essential/BuilderAdapter;
.super Ljava/lang/Object;
.source "BuilderAdapter.java"


# instance fields
.field private mEdit:Z

.field private mNetworkId:I

.field private mSecurity:I

.field private mSsid:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public getEdit()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/lenovoframework/adapter/essential/BuilderAdapter;->mEdit:Z

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/lenovoframework/adapter/essential/BuilderAdapter;->mNetworkId:I

    return v0
.end method

.method public getSecurity()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/lenovoframework/adapter/essential/BuilderAdapter;->mSecurity:I

    return v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovoframework/adapter/essential/BuilderAdapter;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method public getViews()Landroid/view/View;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovoframework/adapter/essential/BuilderAdapter;->mView:Landroid/view/View;

    return-object v0
.end method

.method public setEdit(Z)Lcom/lenovoframework/adapter/essential/BuilderAdapter;
    .locals 0
    .param p1, "edit"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/lenovoframework/adapter/essential/BuilderAdapter;->mEdit:Z

    .line 45
    return-object p0
.end method

.method public setNetworkId(I)Lcom/lenovoframework/adapter/essential/BuilderAdapter;
    .locals 0
    .param p1, "networkId"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/lenovoframework/adapter/essential/BuilderAdapter;->mNetworkId:I

    .line 36
    return-object p0
.end method

.method public setSecurity(I)Lcom/lenovoframework/adapter/essential/BuilderAdapter;
    .locals 0
    .param p1, "security"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/lenovoframework/adapter/essential/BuilderAdapter;->mSecurity:I

    .line 28
    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/lenovoframework/adapter/essential/BuilderAdapter;
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/lenovoframework/adapter/essential/BuilderAdapter;->mSsid:Ljava/lang/String;

    .line 20
    return-object p0
.end method

.method public setViews(Landroid/view/View;)Lcom/lenovoframework/adapter/essential/BuilderAdapter;
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lenovoframework/adapter/essential/BuilderAdapter;->mView:Landroid/view/View;

    .line 58
    return-object p0
.end method
