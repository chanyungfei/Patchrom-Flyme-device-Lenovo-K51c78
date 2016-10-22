.class public final Landroid/nfc/NfcManager;
.super Ljava/lang/Object;
.source "NfcManager.java"


# instance fields
.field private mAdapter:Landroid/nfc/NfcAdapter;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context not associated with any application (using a mock context?)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_0
    iput-object p1, p0, Landroid/nfc/NfcManager;->mContext:Landroid/content/Context;

    .line 60
    :try_start_0
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    :goto_0
    iput-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 65
    return-void

    .line 61
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    const/4 v0, 0x0

    .restart local v0    # "adapter":Landroid/nfc/NfcAdapter;
    goto :goto_0
.end method


# virtual methods
.method public getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .locals 3

    .prologue
    .line 74
    iget-object v2, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_0

    .line 77
    :try_start_0
    iget-object v2, p0, Landroid/nfc/NfcManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 81
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    :goto_0
    iput-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 84
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :cond_0
    iget-object v2, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    return-object v2

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    const/4 v0, 0x0

    .restart local v0    # "adapter":Landroid/nfc/NfcAdapter;
    goto :goto_0
.end method
