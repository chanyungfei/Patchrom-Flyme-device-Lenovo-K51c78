.class final enum Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
.super Ljava/lang/Enum;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Tab"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

.field public static final enum SYSTEM:Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

.field public static final enum USER:Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;


# instance fields
.field private final mCheckbox:Z

.field private final mExpandableList:I

.field private final mList:I

.field private final mProgress:I

.field private final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const v6, 0x7f0b0173

    const v5, 0x7f0b0172

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 78
    new-instance v0, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    const-string v1, "SYSTEM"

    const-string v3, "system"

    const v4, 0x7f0b016d

    invoke-direct/range {v0 .. v7}, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v0, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    .line 83
    new-instance v8, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    const-string v9, "USER"

    const-string v11, "user"

    const v12, 0x7f0b0170

    move v10, v7

    move v13, v5

    move v14, v6

    move v15, v2

    invoke-direct/range {v8 .. v15}, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;-><init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V

    sput-object v8, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    sget-object v1, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    aput-object v1, v0, v2

    sget-object v1, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    aput-object v1, v0, v7

    sput-object v0, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;IIIZ)V
    .locals 0
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "progress"    # I
    .param p5, "list"    # I
    .param p6, "expandableList"    # I
    .param p7, "checkbox"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput-object p3, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;

    .line 99
    iput p4, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->mProgress:I

    .line 100
    iput p5, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->mList:I

    .line 101
    iput p6, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->mExpandableList:I

    .line 102
    iput-boolean p7, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->mCheckbox:Z

    .line 103
    return-void
.end method

.method static synthetic access$1400(Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 77
    iget v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->mProgress:I

    return v0
.end method

.method static synthetic access$1700(Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Landroid/security/IKeyChainService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->getAliases(Landroid/security/IKeyChainService;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Landroid/security/IKeyChainService;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->deleted(Landroid/security/IKeyChainService;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->mCheckbox:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->getButtonLabel(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 77
    iget v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->mExpandableList:I

    return v0
.end method

.method static synthetic access$3100(Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->getButtonConfirmation(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;ZLcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->postOperationUpdate(ZLcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method static synthetic access$600(Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    .prologue
    .line 77
    iget v0, p0, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->mList:I

    return v0
.end method

.method private deleted(Landroid/security/IKeyChainService;Ljava/lang/String;)Z
    .locals 3
    .param p1, "service"    # Landroid/security/IKeyChainService;
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 118
    sget-object v1, Lcom/lenovo/settings/TrustedCredentialsSettings$5;->$SwitchMap$com$lenovo$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 124
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 120
    :pswitch_0
    invoke-interface {p1, p2}, Landroid/security/IKeyChainService;->containsCaAlias(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 122
    :cond_0
    :pswitch_1
    return v0

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getAliases(Landroid/security/IKeyChainService;)Ljava/util/List;
    .locals 2
    .param p1, "service"    # Landroid/security/IKeyChainService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/IKeyChainService;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/ParcelableString;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 107
    sget-object v0, Lcom/lenovo/settings/TrustedCredentialsSettings$5;->$SwitchMap$com$lenovo$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 114
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 109
    :pswitch_0
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getSystemCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    :pswitch_1
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getButtonConfirmation(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)I
    .locals 2
    .param p1, "certHolder"    # Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 141
    sget-object v0, Lcom/lenovo/settings/TrustedCredentialsSettings$5;->$SwitchMap$com$lenovo$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 150
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 143
    :pswitch_0
    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const v0, 0x7f0c0b6e

    .line 148
    :goto_0
    return v0

    .line 146
    :cond_0
    const v0, 0x7f0c0b6f

    goto :goto_0

    .line 148
    :pswitch_1
    const v0, 0x7f0c0b70

    goto :goto_0

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getButtonLabel(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)I
    .locals 2
    .param p1, "certHolder"    # Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 128
    sget-object v0, Lcom/lenovo/settings/TrustedCredentialsSettings$5;->$SwitchMap$com$lenovo$settings$TrustedCredentialsSettings$Tab:[I

    invoke-virtual {p0}, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 137
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 130
    :pswitch_0
    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p1}, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const v0, 0x7f0c0b6c

    .line 135
    :goto_0
    return v0

    .line 133
    :cond_0
    const v0, 0x7f0c0b6b

    goto :goto_0

    .line 135
    :pswitch_1
    const v0, 0x7f0c0b6d

    goto :goto_0

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private postOperationUpdate(ZLcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 1
    .param p1, "ok"    # Z
    .param p2, "certHolder"    # Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 154
    if-eqz p1, :cond_2

    .line 155
    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    invoke-static {p2}, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    move-result-object v0

    iget-boolean v0, v0, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->mCheckbox:Z

    if-eqz v0, :cond_1

    .line 156
    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p2}, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p2, v0}, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->access$002(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;Z)Z

    .line 160
    :goto_1
    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    invoke-static {p2}, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;->notifyDataSetChanged()V

    .line 165
    :goto_2
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 158
    :cond_1
    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    invoke-static {p2}, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;->remove(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)V

    goto :goto_1

    .line 163
    :cond_2
    # getter for: Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->mAdapter:Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    invoke-static {p2}, Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;->access$200(Lcom/lenovo/settings/TrustedCredentialsSettings$CertHolder;)Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    move-result-object v0

    invoke-interface {v0}, Lcom/lenovo/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;->load()V

    goto :goto_2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    const-class v0, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method public static values()[Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->$VALUES:[Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    invoke-virtual {v0}, [Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method
