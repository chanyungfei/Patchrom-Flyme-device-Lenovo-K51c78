.class public interface abstract Lcom/mediatek/ipomanager/ActivityManagerPlus$IIPOActivityManagerServiceInterface;
.super Ljava/lang/Object;
.source "ActivityManagerPlus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ipomanager/ActivityManagerPlus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IIPOActivityManagerServiceInterface"
.end annotation


# virtual methods
.method public abstract createIPOWin(Landroid/content/Context;)V
.end method

.method public abstract ipoBootCompleted()V
.end method

.method public abstract launchPowrOffAlarm(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
.end method

.method public abstract removeIPOWin(Landroid/content/Context;)V
.end method

.method public abstract updateFirstBoot(Ljava/lang/Boolean;)V
.end method
