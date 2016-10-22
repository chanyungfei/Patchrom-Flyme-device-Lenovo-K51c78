.class public interface abstract Lcom/gsma/services/nfc/NfcController$Callbacks;
.super Ljava/lang/Object;
.source "NfcController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/nfc/NfcController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callbacks"
.end annotation


# static fields
.field public static final CARD_EMULATION_DISABLED:I = 0x0

.field public static final CARD_EMULATION_ENABLED:I = 0x1

.field public static final CARD_EMULATION_ERROR:I = -0x1


# virtual methods
.method public abstract onCardEmulationMode(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onEnableNfcController(Z)V
.end method

.method public abstract onGetDefaultController(Lcom/gsma/services/nfc/NfcController;)V
.end method
