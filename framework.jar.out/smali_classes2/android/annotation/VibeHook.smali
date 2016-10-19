.class public interface abstract annotation Landroid/annotation/VibeHook;
.super Ljava/lang/Object;
.source "VibeHook.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/annotation/VibeHook;
        module1 = .enum Landroid/annotation/VibeHook$VibeHookModule;->NONE:Landroid/annotation/VibeHook$VibeHookModule;
        module2 = .enum Landroid/annotation/VibeHook$VibeHookModule;->NONE:Landroid/annotation/VibeHook$VibeHookModule;
        module3 = .enum Landroid/annotation/VibeHook$VibeHookModule;->NONE:Landroid/annotation/VibeHook$VibeHookModule;
        note = ""
        note1 = ""
        note2 = ""
        note3 = ""
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/annotation/VibeHook$VibeHookModule;,
        Landroid/annotation/VibeHook$VibeHookType;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract module()Landroid/annotation/VibeHook$VibeHookModule;
.end method

.method public abstract module1()Landroid/annotation/VibeHook$VibeHookModule;
.end method

.method public abstract module2()Landroid/annotation/VibeHook$VibeHookModule;
.end method

.method public abstract module3()Landroid/annotation/VibeHook$VibeHookModule;
.end method

.method public abstract note()Ljava/lang/String;
.end method

.method public abstract note1()Ljava/lang/String;
.end method

.method public abstract note2()Ljava/lang/String;
.end method

.method public abstract note3()Ljava/lang/String;
.end method

.method public abstract type()Landroid/annotation/VibeHook$VibeHookType;
.end method
